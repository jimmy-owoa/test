class ChangeDataTypeColumnsForProjects < ActiveRecord::Migration[5.1]
  def change
    change_column :projects, :current_phase, :string
    change_column :projects, :responsible, :string
    change_column :projects, :contract_type, :string
  end
end
