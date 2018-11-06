class CreateFeelings < ActiveRecord::Migration[5.2]
  def change
    create_table :feelings do |t|
      t.string :title
      t.string :description
      t.string :student_id

      t.timestamps
    end
  end
end
