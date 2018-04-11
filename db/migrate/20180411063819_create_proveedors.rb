class CreateProveedors < ActiveRecord::Migration[5.1]
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.text :giro
      t.string :rut
      t.string :nombre_contacto
      t.string :telefono
      t.string :email
      t.text :descripcion
      t.text :estado
      t.text :giro
      t.string :pais
      t.string :ciudad
      t.text :direccion

      t.timestamps
    end
  end
end
