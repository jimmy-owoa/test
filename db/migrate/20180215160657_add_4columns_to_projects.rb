class Add4columnsToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :detail_title, :text
    add_column :projects, :city, :string
    add_column :projects, :main_teams, :text
    add_column :projects, :main_supplies, :text
  end
end
