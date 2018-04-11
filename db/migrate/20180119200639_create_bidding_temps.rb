class CreateBiddingTemps < ActiveRecord::Migration[5.1]
  def change
    create_table :bidding_temps do |t|
      t.string :title
      t.string :country
      t.string :sector
      t.text :items_involved
      t.string :location
      t.string :bidding_company
      t.text :description
      t.text :requirements
      t.text :bases
      t.text :contact

      t.timestamps
    end
  end
end
