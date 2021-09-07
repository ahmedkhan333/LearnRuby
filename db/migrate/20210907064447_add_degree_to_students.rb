class AddDegreeToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :degree, :string
  end
end
