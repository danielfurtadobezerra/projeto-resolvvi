require "test_helper"

class ProblemaNegativadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @problema_negativado = problema_negativados(:one)
  end

  test "should get index" do
    get problema_negativados_url
    assert_response :success
  end

  test "should get new" do
    get new_problema_negativado_url
    assert_response :success
  end

  test "should create problema_negativado" do
    assert_difference("ProblemaNegativado.count") do
      post problema_negativados_url, params: { problema_negativado: { advogado: @problema_negativado.advogado, categoria: @problema_negativado.categoria, divida: @problema_negativado.divida, endereco: @problema_negativado.endereco, provas: @problema_negativado.provas, usuario: @problema_negativado.usuario } }
    end

    assert_redirected_to problema_negativado_url(ProblemaNegativado.last)
  end

  test "should show problema_negativado" do
    get problema_negativado_url(@problema_negativado)
    assert_response :success
  end

  test "should get edit" do
    get edit_problema_negativado_url(@problema_negativado)
    assert_response :success
  end

  test "should update problema_negativado" do
    patch problema_negativado_url(@problema_negativado), params: { problema_negativado: { advogado: @problema_negativado.advogado, categoria: @problema_negativado.categoria, divida: @problema_negativado.divida, endereco: @problema_negativado.endereco, provas: @problema_negativado.provas, usuario: @problema_negativado.usuario } }
    assert_redirected_to problema_negativado_url(@problema_negativado)
  end

  test "should destroy problema_negativado" do
    assert_difference("ProblemaNegativado.count", -1) do
      delete problema_negativado_url(@problema_negativado)
    end

    assert_redirected_to problema_negativados_url
  end
end
