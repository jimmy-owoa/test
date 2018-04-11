class ChangeDataTypeLocationFromProjects < ActiveRecord::Migration[5.1]
  def change
    change_column :projects, :location, :text
  end
end
