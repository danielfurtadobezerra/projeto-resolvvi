require "application_system_test_case"

class ProblemaNegativadosTest < ApplicationSystemTestCase
  setup do
    @problema_negativado = problema_negativados(:one)
  end

  test "visiting the index" do
    visit problema_negativados_url
    assert_selector "h1", text: "Problema negativados"
  end

  test "should create problema negativado" do
    visit problema_negativados_url
    click_on "New problema negativado"

    fill_in "Advogado", with: @problema_negativado.advogado
    fill_in "Categoria", with: @problema_negativado.categoria
    fill_in "Divida", with: @problema_negativado.divida
    fill_in "Endereco", with: @problema_negativado.endereco
    fill_in "Provas", with: @problema_negativado.provas
    fill_in "Usuario", with: @problema_negativado.usuario
    click_on "Create Problema negativado"

    assert_text "Problema negativado was successfully created"
    click_on "Back"
  end

  test "should update Problema negativado" do
    visit problema_negativado_url(@problema_negativado)
    click_on "Edit this problema negativado", match: :first

    fill_in "Advogado", with: @problema_negativado.advogado
    fill_in "Categoria", with: @problema_negativado.categoria
    fill_in "Divida", with: @problema_negativado.divida
    fill_in "Endereco", with: @problema_negativado.endereco
    fill_in "Provas", with: @problema_negativado.provas
    fill_in "Usuario", with: @problema_negativado.usuario
    click_on "Update Problema negativado"

    assert_text "Problema negativado was successfully updated"
    click_on "Back"
  end

  test "should destroy Problema negativado" do
    visit problema_negativado_url(@problema_negativado)
    click_on "Destroy this problema negativado", match: :first

    assert_text "Problema negativado was successfully destroyed"
  end
end
