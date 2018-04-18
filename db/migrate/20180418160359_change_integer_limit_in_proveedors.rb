class ChangeIntegerLimitInProveedors < ActiveRecord::Migration[5.1]
  def change
    change_column :proveedors, :antecedente_comercial_monto_total_protesto, :integer, limit: 8
  end
end
