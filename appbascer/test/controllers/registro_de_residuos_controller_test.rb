require 'test_helper'

class RegistroDeResiduosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_de_residuo = registro_de_residuos(:one)
  end

  test "should get index" do
    get registro_de_residuos_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_de_residuo_url
    assert_response :success
  end

  test "should create registro_de_residuo" do
    assert_difference('RegistroDeResiduo.count') do
      post registro_de_residuos_url, params: { registro_de_residuo: { contenedor: @registro_de_residuo.contenedor, fecha: @registro_de_residuo.fecha, telefono: @registro_de_residuo.telefono, tipo: @registro_de_residuo.tipo } }
    end

    assert_redirected_to registro_de_residuo_url(RegistroDeResiduo.last)
  end

  test "should show registro_de_residuo" do
    get registro_de_residuo_url(@registro_de_residuo)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_de_residuo_url(@registro_de_residuo)
    assert_response :success
  end

  test "should update registro_de_residuo" do
    patch registro_de_residuo_url(@registro_de_residuo), params: { registro_de_residuo: { contenedor: @registro_de_residuo.contenedor, fecha: @registro_de_residuo.fecha, telefono: @registro_de_residuo.telefono, tipo: @registro_de_residuo.tipo } }
    assert_redirected_to registro_de_residuo_url(@registro_de_residuo)
  end

  test "should destroy registro_de_residuo" do
    assert_difference('RegistroDeResiduo.count', -1) do
      delete registro_de_residuo_url(@registro_de_residuo)
    end

    assert_redirected_to registro_de_residuos_url
  end
end
