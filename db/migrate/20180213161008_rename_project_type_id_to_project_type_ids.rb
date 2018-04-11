class RenameProjectTypeIdToProjectTypeIds < ActiveRecord::Migration[5.1]
  def change
    change_table :projects do |t|
      t.rename :project_type_id, :project_type_ids
    end
  end
end
