require 'test_helper'

class ProveedorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proveedor = proveedors(:one)
  end

  test "should get index" do
    get proveedors_url
    assert_response :success
  end

  test "should get new" do
    get new_proveedor_url
    assert_response :success
  end

  test "should create proveedor" do
    assert_difference('Proveedor.count') do
      post proveedors_url, params: { proveedor: { antecedente_comercial_cantidad_documentos_boletin: @proveedor.antecedente_comercial_cantidad_documentos_boletin, antecedente_comercial_cantidad_documentos_morosidad: @proveedor.antecedente_comercial_cantidad_documentos_morosidad, antecedente_comercial_cantidad_documentos_propuestos: @proveedor.antecedente_comercial_cantidad_documentos_propuestos, antecedente_comercial_monto_total_boletin: @proveedor.antecedente_comercial_monto_total_boletin, antecedente_comercial_monto_total_morosidad: @proveedor.antecedente_comercial_monto_total_morosidad, antecedente_comercial_monto_total_protesto: @proveedor.antecedente_comercial_monto_total_protesto, competencias_basicas_calidad: @proveedor.competencias_basicas_calidad, competencias_basicas_categoria: @proveedor.competencias_basicas_categoria, competencias_basicas_comunidad: @proveedor.competencias_basicas_comunidad, competencias_basicas_conectividad_y_automatizacion: @proveedor.competencias_basicas_conectividad_y_automatizacion, competencias_basicas_fecha_vigencia: @proveedor.competencias_basicas_fecha_vigencia, competencias_basicas_infraestructura: @proveedor.competencias_basicas_infraestructura, competencias_basicas_medio_ambiente: @proveedor.competencias_basicas_medio_ambiente, competencias_basicas_porcentaje: @proveedor.competencias_basicas_porcentaje, competencias_basicas_seguridad: @proveedor.competencias_basicas_seguridad, comptencias_basicas_recursos_humanos: @proveedor.comptencias_basicas_recursos_humanos, contacto_email: @proveedor.contacto_email, contacto_nombre: @proveedor.contacto_nombre, contacto_telefono: @proveedor.contacto_telefono, estado_general: @proveedor.estado_general, financiero_anio: @proveedor.financiero_anio, financiero_capital_de_trabajo: @proveedor.financiero_capital_de_trabajo, financiero_capital_de_trabajo_relativo: @proveedor.financiero_capital_de_trabajo_relativo, financiero_deuda: @proveedor.financiero_deuda, financiero_indice_de_quiebra: @proveedor.financiero_indice_de_quiebra, financiero_ingreso_de_explotacion: @proveedor.financiero_ingreso_de_explotacion, financiero_leverage: @proveedor.financiero_leverage, financiero_liquidez: @proveedor.financiero_liquidez, financiero_patrimonio: @proveedor.financiero_patrimonio, financiero_razon_acida: @proveedor.financiero_razon_acida, financiero_razon_de_endeudamiento: @proveedor.financiero_razon_de_endeudamiento, financiero_rentabilidad_activos: @proveedor.financiero_rentabilidad_activos, financiero_rentabilidad_activos: @proveedor.financiero_rentabilidad_activos, financiero_rentabilidad_patrimonio: @proveedor.financiero_rentabilidad_patrimonio, financiero_rentabilidad_ventas: @proveedor.financiero_rentabilidad_ventas, financiero_tamano: @proveedor.financiero_tamano, financiero_total_activos: @proveedor.financiero_total_activos, instalaciones_ciudad_casa_matriz: @proveedor.instalaciones_ciudad_casa_matriz, instalaciones_direccion_casa_matriz: @proveedor.instalaciones_direccion_casa_matriz, mutualidad_fecha: @proveedor.mutualidad_fecha, mutualidad_indice_de_frecuencia: @proveedor.mutualidad_indice_de_frecuencia, mutualidad_indice_gravedad: @proveedor.mutualidad_indice_gravedad, observaciones: @proveedor.observaciones, observaciones_agenda: @proveedor.observaciones_agenda, razon_social: @proveedor.razon_social, rut: @proveedor.rut, situacion_competencias_basicas: @proveedor.situacion_competencias_basicas, tipo_de_certificacion_iso: @proveedor.tipo_de_certificacion_iso, tributario_facturacion_electronica: @proveedor.tributario_facturacion_electronica, tributario_fecha_de_actualizacion: @proveedor.tributario_fecha_de_actualizacion, tributario_observacion_alerta: @proveedor.tributario_observacion_alerta, tributario_observacion_irregularidad: @proveedor.tributario_observacion_irregularidad } }
    end

    assert_redirected_to proveedor_url(Proveedor.last)
  end

  test "should show proveedor" do
    get proveedor_url(@proveedor)
    assert_response :success
  end

  test "should get edit" do
    get edit_proveedor_url(@proveedor)
    assert_response :success
  end

  test "should update proveedor" do
    patch proveedor_url(@proveedor), params: { proveedor: { antecedente_comercial_cantidad_documentos_boletin: @proveedor.antecedente_comercial_cantidad_documentos_boletin, antecedente_comercial_cantidad_documentos_morosidad: @proveedor.antecedente_comercial_cantidad_documentos_morosidad, antecedente_comercial_cantidad_documentos_propuestos: @proveedor.antecedente_comercial_cantidad_documentos_propuestos, antecedente_comercial_monto_total_boletin: @proveedor.antecedente_comercial_monto_total_boletin, antecedente_comercial_monto_total_morosidad: @proveedor.antecedente_comercial_monto_total_morosidad, antecedente_comercial_monto_total_protesto: @proveedor.antecedente_comercial_monto_total_protesto, competencias_basicas_calidad: @proveedor.competencias_basicas_calidad, competencias_basicas_categoria: @proveedor.competencias_basicas_categoria, competencias_basicas_comunidad: @proveedor.competencias_basicas_comunidad, competencias_basicas_conectividad_y_automatizacion: @proveedor.competencias_basicas_conectividad_y_automatizacion, competencias_basicas_fecha_vigencia: @proveedor.competencias_basicas_fecha_vigencia, competencias_basicas_infraestructura: @proveedor.competencias_basicas_infraestructura, competencias_basicas_medio_ambiente: @proveedor.competencias_basicas_medio_ambiente, competencias_basicas_porcentaje: @proveedor.competencias_basicas_porcentaje, competencias_basicas_seguridad: @proveedor.competencias_basicas_seguridad, comptencias_basicas_recursos_humanos: @proveedor.comptencias_basicas_recursos_humanos, contacto_email: @proveedor.contacto_email, contacto_nombre: @proveedor.contacto_nombre, contacto_telefono: @proveedor.contacto_telefono, estado_general: @proveedor.estado_general, financiero_anio: @proveedor.financiero_anio, financiero_capital_de_trabajo: @proveedor.financiero_capital_de_trabajo, financiero_capital_de_trabajo_relativo: @proveedor.financiero_capital_de_trabajo_relativo, financiero_deuda: @proveedor.financiero_deuda, financiero_indice_de_quiebra: @proveedor.financiero_indice_de_quiebra, financiero_ingreso_de_explotacion: @proveedor.financiero_ingreso_de_explotacion, financiero_leverage: @proveedor.financiero_leverage, financiero_liquidez: @proveedor.financiero_liquidez, financiero_patrimonio: @proveedor.financiero_patrimonio, financiero_razon_acida: @proveedor.financiero_razon_acida, financiero_razon_de_endeudamiento: @proveedor.financiero_razon_de_endeudamiento, financiero_rentabilidad_activos: @proveedor.financiero_rentabilidad_activos, financiero_rentabilidad_activos: @proveedor.financiero_rentabilidad_activos, financiero_rentabilidad_patrimonio: @proveedor.financiero_rentabilidad_patrimonio, financiero_rentabilidad_ventas: @proveedor.financiero_rentabilidad_ventas, financiero_tamano: @proveedor.financiero_tamano, financiero_total_activos: @proveedor.financiero_total_activos, instalaciones_ciudad_casa_matriz: @proveedor.instalaciones_ciudad_casa_matriz, instalaciones_direccion_casa_matriz: @proveedor.instalaciones_direccion_casa_matriz, mutualidad_fecha: @proveedor.mutualidad_fecha, mutualidad_indice_de_frecuencia: @proveedor.mutualidad_indice_de_frecuencia, mutualidad_indice_gravedad: @proveedor.mutualidad_indice_gravedad, observaciones: @proveedor.observaciones, observaciones_agenda: @proveedor.observaciones_agenda, razon_social: @proveedor.razon_social, rut: @proveedor.rut, situacion_competencias_basicas: @proveedor.situacion_competencias_basicas, tipo_de_certificacion_iso: @proveedor.tipo_de_certificacion_iso, tributario_facturacion_electronica: @proveedor.tributario_facturacion_electronica, tributario_fecha_de_actualizacion: @proveedor.tributario_fecha_de_actualizacion, tributario_observacion_alerta: @proveedor.tributario_observacion_alerta, tributario_observacion_irregularidad: @proveedor.tributario_observacion_irregularidad } }
    assert_redirected_to proveedor_url(@proveedor)
  end

  test "should destroy proveedor" do
    assert_difference('Proveedor.count', -1) do
      delete proveedor_url(@proveedor)
    end

    assert_redirected_to proveedors_url
  end
end
