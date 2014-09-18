require 'test_helper'

class AprendizsControllerTest < ActionController::TestCase
  setup do
    @aprendiz = aprendizs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aprendizs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aprendiz" do
    assert_difference('Aprendiz.count') do
      post :create, aprendiz: { apellido: @aprendiz.apellido, centro_id: @aprendiz.centro_id, doc: @aprendiz.doc, ficha_id: @aprendiz.ficha_id, nombre: @aprendiz.nombre }
    end

    assert_redirected_to aprendiz_path(assigns(:aprendiz))
  end

  test "should show aprendiz" do
    get :show, id: @aprendiz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aprendiz
    assert_response :success
  end

  test "should update aprendiz" do
    patch :update, id: @aprendiz, aprendiz: { apellido: @aprendiz.apellido, centro_id: @aprendiz.centro_id, doc: @aprendiz.doc, ficha_id: @aprendiz.ficha_id, nombre: @aprendiz.nombre }
    assert_redirected_to aprendiz_path(assigns(:aprendiz))
  end

  test "should destroy aprendiz" do
    assert_difference('Aprendiz.count', -1) do
      delete :destroy, id: @aprendiz
    end

    assert_redirected_to aprendizs_path
  end
end
