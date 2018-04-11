class ChangeDataTypeProductionFromProjects < ActiveRecord::Migration[5.1]
  def change
    change_column :projects, :production, :string
  end
end
