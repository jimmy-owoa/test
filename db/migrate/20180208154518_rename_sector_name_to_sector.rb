class RenameSectorNameToSector < ActiveRecord::Migration[5.1]
  def change
    change_table :projects do |t|
      t.rename :sector_name, :sector
    end
  end
end
