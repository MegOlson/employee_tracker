class AddForeignKeyColumns < ActiveRecord::Migration[5.1]
  def change
    add_column(:departments, :employee_id, :integer)
    add_column(:departments, :project_id, :integer)
  end
end
