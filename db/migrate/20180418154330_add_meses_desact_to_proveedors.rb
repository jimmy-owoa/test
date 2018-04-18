class AddMesesDesactToProveedors < ActiveRecord::Migration[5.1]
  def change
    add_column :proveedors, :meses_desactualizacion_mutual, :integer
  end
end
