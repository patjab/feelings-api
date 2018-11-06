class Api::V1::CohortsController < ApplicationController
  def index
    cohorts = Cohort.all
    render json: cohorts
  end

  def show
    cohort = Cohort.find(params[:id])
    render json: cohort
  end

  def create
    cohort = Cohort.new(user_params)
    if cohort.save
      render json: Cohort.all
    else
      render json: { errors: student.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.permit(:cohort).require(:name, :start)
  end
end
