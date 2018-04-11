class AddMainServicesToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :main_services, :text
  end
end
