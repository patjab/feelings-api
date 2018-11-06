class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :location
      t.string :favorite_language
      t.integer :cohort_id

      t.timestamps
    end
  end
end
