class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :business
      t.string :city
      t.string :address
      t.string :contact_person
      t.string :phone
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
