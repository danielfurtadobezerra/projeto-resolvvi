require "test_helper"

class ProblemaVoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @problema_voo = problema_voos(:one)
  end

  test "should get index" do
    get problema_voos_url
    assert_response :success
  end

  test "should get new" do
    get new_problema_voo_url
    assert_response :success
  end

  test "should create problema_voo" do
    assert_difference("ProblemaVoo.count") do
      post problema_voos_url, params: { problema_voo: { advogado: @problema_voo.advogado, detalhe: @problema_voo.detalhe, endereço: @problema_voo.endereço, provas: @problema_voo.provas, situacao: @problema_voo.situacao, usuario: @problema_voo.usuario } }
    end

    assert_redirected_to problema_voo_url(ProblemaVoo.last)
  end

  test "should show problema_voo" do
    get problema_voo_url(@problema_voo)
    assert_response :success
  end

  test "should get edit" do
    get edit_problema_voo_url(@problema_voo)
    assert_response :success
  end

  test "should update problema_voo" do
    patch problema_voo_url(@problema_voo), params: { problema_voo: { advogado: @problema_voo.advogado, detalhe: @problema_voo.detalhe, endereço: @problema_voo.endereço, provas: @problema_voo.provas, situacao: @problema_voo.situacao, usuario: @problema_voo.usuario } }
    assert_redirected_to problema_voo_url(@problema_voo)
  end

  test "should destroy problema_voo" do
    assert_difference("ProblemaVoo.count", -1) do
      delete problema_voo_url(@problema_voo)
    end

    assert_redirected_to problema_voos_url
  end
end
