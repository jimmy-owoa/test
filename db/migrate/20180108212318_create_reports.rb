class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :description
      t.date :last_edition
      t.attachment :image

      t.timestamps
    end
  end
end
