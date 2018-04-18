rails g scaffold Proveedor rut:string razon_social:string estado_general:string observaciones:text observaciones_agenda:text situacion_competencias_basicas:string competencias_basicas_categoria:string competencias_basicas_porcentaje:double competencias_basicas_fecha_vigencia:date competencias_basicas_infraestructura:double comptencias_basicas_recursos_humanos:double competencias_basicas_calidad:double competencias_basicas_medio_ambiente:double competencias_basicas_seguridad:double competencias_basicas_conectividad_y_automatizacion:double competencias_basicas_comunidad:double financiero_anio:integer financiero_tamano:integer financiero_patrimonio:double financiero_capital_de_trabajo:double financiero_total_activos:double financiero_deuda:double financiero_capital_de_trabajo_relativo:double financiero_liquidez:double financiero_razon_de_endeudamiento:double financiero_leverage:double financiero_rentabilidad_activos:double financiero_rentabilidad_activos:double financiero_rentabilidad_patrimonio:double financiero_rentabilidad_ventas:double financiero_indice_de_quiebra:double financiero_ingreso_de_explotacion:double financiero_razon_acida:double antecedente_comercial_cantidad_documentos_boletin:integer antecedente_comercial_monto_total_boletin:double antecedente_comercial_cantidad_documentos_morosidad:integer antecedente_comercial_monto_total_morosidad:integer antecedente_comercial_cantidad_documentos_propuestos:integer antecedente_comercial_monto_total_protesto:integer tributario_fecha_de_actualizacion:date tributario_facturacion_electronica:string tributario_observacion_alerta:string tributario_observacion_irregularidad:string mutualidad_fecha:date mutualidad_indice_gravedad:double mutualidad_indice_de_frecuencia:double contacto_nombre:string contacto_telefono:string contacto_email:string instalaciones_ciudad_casa_matriz:string instalaciones_direccion_casa_matriz:text tipo_de_certificacion_iso:string




require 'csv'
CSV.foreach('proveedores_v2.csv', headers: true) do |row|
    # Getting values from csv archive
    rut = row[0]
    razon_social = row[1]
    estado_general = row[2]
    observaciones = row[3]
    observaciones_agenda = row[4]
    situacion_competencias_basicas = row[5]
    competencias_basicas_categoria = row[6]
    competencias_basicas_porcentaje = row[7]
    competencias_basicas_fecha_vigencia = row[8]
    competencias_basicas_infraestructura= row[9]
    comptencias_basicas_recursos_humanos = row[10]
    competencias_basicas_calidad = row[11]
    competencias_basicas_medio_ambiente = row[12]
    competencias_basicas_seguridad= row[13]
    competencias_basicas_conectividad_y_automatizacion = row[14]
    competencias_basicas_comunidad = row[15]
    financiero_anio = row[16]
    financiero_tamano = row[17]
    financiero_patrimonio = row[18]
    financiero_capital_de_trabajo = row[19]
    financiero_total_activos = row[20]
    financiero_deuda = row[21]
    financiero_capital_de_trabajo_relativo = row[22]
    financiero_liquidez = row[23]
    financiero_razon_de_endeudamiento = row[24]
    financiero_leverage = row[25]
    financiero_rentabilidad_activos = row[26]
    financiero_rentabilidad_patrimonio = row[27]
    financiero_rentabilidad_ventas = row[28]
    financiero_indice_de_quiebra = row[29]
    financiero_ingreso_de_explotacion = row[30]
    financiero_razon_acida = row[31]
    antecedente_comercial_cantidad_documentos_boletin = row[32]
    antecedente_comercial_monto_total_boletin = row[33]
    antecedente_comercial_cantidad_documentos_morosidad = row[34]
    antecedente_comercial_monto_total_morosidad = row[35]
    antecedente_comercial_cantidad_documentos_protestos = row[36]
    antecedente_comercial_monto_total_protesto = row[37]
    tributario_fecha_de_actualizacion = row[38]
    tributario_facturacion_electronica = row[39]
    tributario_observacion_alerta = row[40]
    tributario_observacion_irregularidad = row[41]
    mutualidad_fecha = row[42]
    mutualidad_indice_gravedad = row[43]
    mutualidad_indice_de_frecuencia = row[44]
    contacto_nombre = row[45]
    contacto_telefono = row[46]
    contacto_email = row[47]
    instalaciones_ciudad_casa_matriz = row[48]
    instalaciones_direccion_casa_matriz = row[49]
    tipo_de_certificacion_iso = row[50]
    numero_registro = row[51]
    alerta_actualizacion = row[52]
    nivel_deuda = row[53]
    infraccion_boletin_laboral = row[54]
    tiene_documentos_morosos = row[55]
    tiene_documentos_protestados = row[56]
    alerta_sii = row[57]
    alerta_desactualizacion_mutual = row[58]
    es_extranjero = row[59]
    iso_9000 = row[60]
    iso_14000 = row[61]
    iso_18000 = row[62]
    penalizacion_liquidez = row[63]
    penalizacion_test_acido = row[64]
    penalizacion_endeudamiento = row[65]
    penalizacion_nivel_deuda = row[66]
    pena_morosidad = row[67]
    pena_protestos = row[68]
    pena_alerta_sii = row[69]
    pena_iso_9000 = row[70]
    pena_iso_18000 = row[71]
    pena_boletin_laboral = row[72]
    pena_indice_frecuencia = row[73]
    scoring = row[74]
    status_scoring = row[75]
    meses_desactualizacion_mutual = row[76]
    pena_indice_gravedad = row[77]



    Proveedor.create(rut: rut, razon_social: razon_social, estado_general: estado_general, observaciones: observaciones, observaciones_agenda: observaciones_agenda,
    situacion_competencias_basicas: situacion_competencias_basicas, competencias_basicas_categoria: competencias_basicas_categoria, competencias_basicas_porcentaje: competencias_basicas_porcentaje,
    competencias_basicas_fecha_vigencia: competencias_basicas_fecha_vigencia, competencias_basicas_infraestructura: competencias_basicas_infraestructura,
    comptencias_basicas_recursos_humanos: comptencias_basicas_recursos_humanos, competencias_basicas_calidad: competencias_basicas_calidad, competencias_basicas_medio_ambiente: competencias_basicas_medio_ambiente,
    competencias_basicas_seguridad: competencias_basicas_seguridad, competencias_basicas_conectividad_y_automatizacion: competencias_basicas_conectividad_y_automatizacion,
    competencias_basicas_comunidad: competencias_basicas_comunidad, financiero_anio: financiero_anio, financiero_tamano: financiero_tamano, financiero_patrimonio: financiero_patrimonio,
    financiero_capital_de_trabajo: financiero_capital_de_trabajo, financiero_total_activos: financiero_total_activos, financiero_deuda: financiero_deuda,
    financiero_capital_de_trabajo_relativo: financiero_capital_de_trabajo_relativo, financiero_liquidez: financiero_liquidez, financiero_razon_de_endeudamiento: financiero_razon_de_endeudamiento,
    financiero_leverage: financiero_leverage, financiero_rentabilidad_activos: financiero_rentabilidad_activos, financiero_rentabilidad_patrimonio: financiero_rentabilidad_patrimonio,
    financiero_rentabilidad_ventas: financiero_rentabilidad_ventas, financiero_indice_de_quiebra: financiero_indice_de_quiebra, financiero_ingreso_de_explotacion: financiero_ingreso_de_explotacion,
    financiero_razon_acida: financiero_razon_acida, antecedente_comercial_cantidad_documentos_boletin: antecedente_comercial_cantidad_documentos_boletin, antecedente_comercial_monto_total_boletin: antecedente_comercial_monto_total_boletin,
    antecedente_comercial_cantidad_documentos_morosidad: antecedente_comercial_cantidad_documentos_morosidad, antecedente_comercial_monto_total_morosidad: antecedente_comercial_monto_total_morosidad,
    antecedente_comercial_cantidad_documentos_protestos: antecedente_comercial_cantidad_documentos_protestos, antecedente_comercial_monto_total_protesto: antecedente_comercial_monto_total_protesto,
    tributario_fecha_de_actualizacion: tributario_fecha_de_actualizacion, tributario_facturacion_electronica: tributario_facturacion_electronica, tributario_observacion_alerta: tributario_observacion_alerta,
    tributario_observacion_irregularidad: tributario_observacion_irregularidad, mutualidad_fecha: mutualidad_fecha, mutualidad_indice_gravedad: mutualidad_indice_gravedad,
    mutualidad_indice_de_frecuencia: mutualidad_indice_de_frecuencia, contacto_nombre: contacto_nombre, contacto_telefono: contacto_telefono,
    contacto_email: contacto_email, instalaciones_ciudad_casa_matriz: instalaciones_ciudad_casa_matriz, instalaciones_direccion_casa_matriz: instalaciones_direccion_casa_matriz,
    tipo_de_certificacion_iso: tipo_de_certificacion_iso, numero_registro: numero_registro, alerta_actualizacion: alerta_actualizacion, nivel_deuda: nivel_deuda,
    infraccion_boletin_laboral: infraccion_boletin_laboral, tiene_documentos_morosos: tiene_documentos_morosos, tiene_documentos_protestados: tiene_documentos_protestados,
    alerta_sii: alerta_sii, alerta_desactualizacion_mutual: alerta_desactualizacion_mutual, iso_9000: iso_9000, iso_14000: iso_14000, iso_18000: iso_18000,
    penalizacion_liquidez: penalizacion_liquidez, penalizacion_test_acido: penalizacion_test_acido, penalizacion_endeudamiento: penalizacion_endeudamiento,
    penalizacion_nivel_deuda: penalizacion_nivel_deuda, pena_morosidad: pena_morosidad, pena_protestos: pena_protestos, pena_alerta_sii: pena_alerta_sii,
    pena_iso_9000: pena_iso_9000, pena_boletin_laboral: pena_boletin_laboral, pena_indice_frecuencia: pena_indice_frecuencia, scoring: scoring, status_scoring: status_scoring,
    meses_desactualizacion_mutual: meses_desactualizacion_mutual, pena_indice_gravedad: pena_indice_gravedad)
   end


   rails g migration add_columns_to_proveedors numero_registro:string alerta_actualizacion:string nivel_deuda:decimal infraccion_boletin_laboral:string tiene_documentos_morosos:string tiene_documentos_protestados:string alerta_sii:string alerta_desactualizacion_mutual:string es_extranjero:string penalizacion_liquidez:integer penalizacion_test_acido:integer penalizacion_endeudamiento:integer penalizacion_nivel_deuda:integer pena_morosidad:integer pena_protestos:integer pena_alerta_sii:integer pena_iso_9000:integer pena_iso_18000:integer pena_boletin_laboral:integer pena_indice_frecuencia:integer scoring:integer status_scoring:string











   a = Project.all
   a.each do |x|
     CategoriesProject.find_by_id(x.id).delete
     x.delete
   end


Category.all.each do |x|
 if x.kind == "project_type"
   puts x.name?
 end
end
# Antiguo
if Category.country.find_by_name(country) == nil
  r = Category.country.new
  r.name = country
  r.save
end
if Category.sector.find_by_name(sector) == nil
  s = Category.sector.new
  s.name = sector
  s.save
end


# Delete data from tables with foreign key
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE categories_projects;
TRUNCATE projects;
SET FOREIGN_KEY_CHECKS = 1;
# a
ALTER TABLE categories_projects
ADD project_type_id bigint(20);
