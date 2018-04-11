class ChangeTypeLocation < ActiveRecord::Migration[5.1]
  def self.up
    change_table :bidding_temps do |t|
      t.change :location, :text
    end
  end
  def self.down
    change_table :bidding_temps do |t|
      t.change :location, :string
    end
  end
end
