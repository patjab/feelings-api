class Api::V1::StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def create
    student = Student.new(user_params)
    if student.save
      render json: Student.all
    else
      render json: { errors: student.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def delete
    student = Student.find(params[:id])
    student.destroy
    render json: { message: "success" }
  end

  private
  def user_params
    params.require(:student).permit(:name, :location, :favorite_language, :cohort_id)
  end
end
