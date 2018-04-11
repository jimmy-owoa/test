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
      post proveedors_url, params: { proveedor: { ciudad: @proveedor.ciudad, descripcion: @proveedor.descripcion, direccion: @proveedor.direccion, email: @proveedor.email, estado: @proveedor.estado, giro: @proveedor.giro, giro: @proveedor.giro, nombre: @proveedor.nombre, nombre_contacto: @proveedor.nombre_contacto, pais: @proveedor.pais, rut: @proveedor.rut, telefono: @proveedor.telefono } }
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
    patch proveedor_url(@proveedor), params: { proveedor: { ciudad: @proveedor.ciudad, descripcion: @proveedor.descripcion, direccion: @proveedor.direccion, email: @proveedor.email, estado: @proveedor.estado, giro: @proveedor.giro, giro: @proveedor.giro, nombre: @proveedor.nombre, nombre_contacto: @proveedor.nombre_contacto, pais: @proveedor.pais, rut: @proveedor.rut, telefono: @proveedor.telefono } }
    assert_redirected_to proveedor_url(@proveedor)
  end

  test "should destroy proveedor" do
    assert_difference('Proveedor.count', -1) do
      delete proveedor_url(@proveedor)
    end

    assert_redirected_to proveedors_url
  end
end
