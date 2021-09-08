class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :courseName
      t.integer :creditHours
      t.string :courseTeacher

      t.timestamps
    end
  end
end
