class CreateProveedors < ActiveRecord::Migration[5.1]
  def change
    create_table :proveedors do |t|
      t.string :rut
      t.string :razon_social
      t.string :estado_general
      t.text :observaciones
      t.text :observaciones_agenda
      t.string :situacion_competencias_basicas
      t.string :competencias_basicas_categoria
      t.float :competencias_basicas_porcentaje
      t.date :competencias_basicas_fecha_vigencia
      t.float :competencias_basicas_infraestructura
      t.float :comptencias_basicas_recursos_humanos
      t.float :competencias_basicas_calidad
      t.float :competencias_basicas_medio_ambiente
      t.float :competencias_basicas_seguridad
      t.float :competencias_basicas_conectividad_y_automatizacion
      t.float :competencias_basicas_comunidad
      t.integer :financiero_anio
      t.integer :financiero_tamano
      t.float :financiero_patrimonio
      t.float :financiero_capital_de_trabajo
      t.float :financiero_total_activos
      t.float :financiero_deuda
      t.float :financiero_capital_de_trabajo_relativo
      t.float :financiero_liquidez
      t.float :financiero_razon_de_endeudamiento
      t.float :financiero_leverage
      t.float :financiero_rentabilidad_activos
      t.float :financiero_rentabilidad_activos
      t.float :financiero_rentabilidad_patrimonio
      t.float :financiero_rentabilidad_ventas
      t.float :financiero_indice_de_quiebra
      t.float :financiero_ingreso_de_explotacion
      t.float :financiero_razon_acida
      t.integer :antecedente_comercial_cantidad_documentos_boletin
      t.float :antecedente_comercial_monto_total_boletin
      t.integer :antecedente_comercial_cantidad_documentos_morosidad
      t.integer :antecedente_comercial_monto_total_morosidad
      t.integer :antecedente_comercial_cantidad_documentos_protestos
      t.integer :antecedente_comercial_monto_total_protesto
      t.date :tributario_fecha_de_actualizacion
      t.string :tributario_facturacion_electronica
      t.string :tributario_observacion_alerta
      t.string :tributario_observacion_irregularidad
      t.date :mutualidad_fecha
      t.float :mutualidad_indice_gravedad
      t.float :mutualidad_indice_de_frecuencia
      t.string :contacto_nombre
      t.string :contacto_telefono
      t.string :contacto_email
      t.string :instalaciones_ciudad_casa_matriz
      t.text :instalaciones_direccion_casa_matriz
      t.string :tipo_de_certificacion_iso

      t.timestamps
    end
  end
end
