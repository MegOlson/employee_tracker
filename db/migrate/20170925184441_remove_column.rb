class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column(:employees, :employee_id, :integer)
  end
end
