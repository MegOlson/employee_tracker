class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table(:departments) do |d|
      d.column(:name, :string)

      d.timestamps()
    end

    add_column(:employees, :employee_id, :integer)
  end
end
