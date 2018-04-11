class RemoveProjectTypeIdsFromProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :project_type_ids
  end
end
