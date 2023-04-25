class AddColumnsToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :country, :string
    add_column :students, :age, :integer
    add_column :students, :contact_number, :string
  end
end
