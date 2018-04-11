class AddSectorIdToProjects < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :sector, foreign_key: true
    add_reference :biddings, :sector, foreign_key: true

  end
end
