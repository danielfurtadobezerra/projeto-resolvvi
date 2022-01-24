require "application_system_test_case"

class ProblemaVoosTest < ApplicationSystemTestCase
  setup do
    @problema_voo = problema_voos(:one)
  end

  test "visiting the index" do
    visit problema_voos_url
    assert_selector "h1", text: "Problema voos"
  end

  test "should create problema voo" do
    visit problema_voos_url
    click_on "New problema voo"

    fill_in "Advogado", with: @problema_voo.advogado
    fill_in "Detalhe", with: @problema_voo.detalhe
    fill_in "Endereço", with: @problema_voo.endereço
    fill_in "Provas", with: @problema_voo.provas
    fill_in "Situacao", with: @problema_voo.situacao
    fill_in "Usuario", with: @problema_voo.usuario
    click_on "Create Problema voo"

    assert_text "Problema voo was successfully created"
    click_on "Back"
  end

  test "should update Problema voo" do
    visit problema_voo_url(@problema_voo)
    click_on "Edit this problema voo", match: :first

    fill_in "Advogado", with: @problema_voo.advogado
    fill_in "Detalhe", with: @problema_voo.detalhe
    fill_in "Endereço", with: @problema_voo.endereço
    fill_in "Provas", with: @problema_voo.provas
    fill_in "Situacao", with: @problema_voo.situacao
    fill_in "Usuario", with: @problema_voo.usuario
    click_on "Update Problema voo"

    assert_text "Problema voo was successfully updated"
    click_on "Back"
  end

  test "should destroy Problema voo" do
    visit problema_voo_url(@problema_voo)
    click_on "Destroy this problema voo", match: :first

    assert_text "Problema voo was successfully destroyed"
  end
end
