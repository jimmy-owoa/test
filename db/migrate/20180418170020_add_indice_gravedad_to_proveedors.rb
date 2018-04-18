class AddIndiceGravedadToProveedors < ActiveRecord::Migration[5.1]
  def change
    add_column :proveedors, :pena_indice_gravedad, :integer
  end
end
