class RemoveProjectTypesIdFromProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :project_types_id

  end
end
