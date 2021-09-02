class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :School
      t.string :phone
      t.string :instagram

      t.timestamps
    end
  end
end
