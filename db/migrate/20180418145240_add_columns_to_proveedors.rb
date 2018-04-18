class AddColumnsToProveedors < ActiveRecord::Migration[5.1]
  def change
    add_column :proveedors, :numero_registro, :string
    add_column :proveedors, :alerta_actualizacion, :string
    add_column :proveedors, :nivel_deuda, :decimal
    add_column :proveedors, :infraccion_boletin_laboral, :string
    add_column :proveedors, :tiene_documentos_morosos, :string
    add_column :proveedors, :tiene_documentos_protestados, :string
    add_column :proveedors, :alerta_sii, :string
    add_column :proveedors, :alerta_desactualizacion_mutual, :string
    add_column :proveedors, :es_extranjero, :string
    add_column :proveedors, :penalizacion_liquidez, :integer
    add_column :proveedors, :penalizacion_test_acido, :integer
    add_column :proveedors, :penalizacion_endeudamiento, :integer
    add_column :proveedors, :penalizacion_nivel_deuda, :integer
    add_column :proveedors, :pena_morosidad, :integer
    add_column :proveedors, :pena_protestos, :integer
    add_column :proveedors, :pena_alerta_sii, :integer
    add_column :proveedors, :pena_iso_9000, :integer
    add_column :proveedors, :pena_iso_18000, :integer
    add_column :proveedors, :pena_boletin_laboral, :integer
    add_column :proveedors, :pena_indice_frecuencia, :integer
    add_column :proveedors, :scoring, :integer
    add_column :proveedors, :status_scoring, :string
  end
end
