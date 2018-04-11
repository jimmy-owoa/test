class AddColumnsToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :adjudications, :text
    add_column :projects, :client, :string
    add_column :projects, :owner, :string
    add_column :projects, :main_works, :text
  end
end
