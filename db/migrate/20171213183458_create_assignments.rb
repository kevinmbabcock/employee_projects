class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table(:assignments) do |t|
      t.column(:employee_id, :integer)
      t.column(:project_id, :integer)
      t.timestamps()
    end
  end
end
