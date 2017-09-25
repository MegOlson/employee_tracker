class DropProjectIdColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column(:departments, :project_id, :integer)
  end
end
