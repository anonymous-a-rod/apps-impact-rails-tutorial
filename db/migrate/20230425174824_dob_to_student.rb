class DobToStudent < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :dob, :date
    add_column :students, :pronoun, :string
  end
end
