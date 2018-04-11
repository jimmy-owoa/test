class CreateSuscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :suscriptions do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :business
      t.string :job

      t.timestamps
    end
  end
end
