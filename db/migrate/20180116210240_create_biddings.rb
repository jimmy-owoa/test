class CreateBiddings < ActiveRecord::Migration[5.1]
  def change
    create_table :biddings do |t|
      t.string :publication_title
      t.string :country
      t.string :sector
      t.string :location
      t.references :business, foreign_key: true
      t.text :description
      t.string :contact_name
      t.string :contact_job
      t.string :contact_email
      t.string :contact_phone
      t.string :contact_address
      t.text :other

      t.timestamps
    end
  end
end
