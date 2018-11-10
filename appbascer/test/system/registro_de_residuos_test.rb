require "application_system_test_case"

class RegistroDeResiduosTest < ApplicationSystemTestCase
  setup do
    @registro_de_residuo = registro_de_residuos(:one)
  end

  test "visiting the index" do
    visit registro_de_residuos_url
    assert_selector "h1", text: "Registro De Residuos"
  end

  test "creating a Registro de residuo" do
    visit registro_de_residuos_url
    click_on "New Registro De Residuo"

    fill_in "Contenedor", with: @registro_de_residuo.contenedor
    fill_in "Fecha", with: @registro_de_residuo.fecha
    fill_in "Telefono", with: @registro_de_residuo.telefono
    fill_in "Tipo", with: @registro_de_residuo.tipo
    click_on "Create Registro de residuo"

    assert_text "Registro de residuo was successfully created"
    click_on "Back"
  end

  test "updating a Registro de residuo" do
    visit registro_de_residuos_url
    click_on "Edit", match: :first

    fill_in "Contenedor", with: @registro_de_residuo.contenedor
    fill_in "Fecha", with: @registro_de_residuo.fecha
    fill_in "Telefono", with: @registro_de_residuo.telefono
    fill_in "Tipo", with: @registro_de_residuo.tipo
    click_on "Update Registro de residuo"

    assert_text "Registro de residuo was successfully updated"
    click_on "Back"
  end

  test "destroying a Registro de residuo" do
    visit registro_de_residuos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registro de residuo was successfully destroyed"
  end
end
