class RemoveEmployeeIdFromProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column(:projects, :employee_id, :integer)
  end
end
