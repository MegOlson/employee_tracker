class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table(:projects) do |p|
      p.column(:name, :string)

      p.timestamps
    end
  end
end
