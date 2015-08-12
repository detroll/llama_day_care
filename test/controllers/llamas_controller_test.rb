require 'test_helper'

class LlamasControllerTest < ActionController::TestCase
  setup do
    @llama = llamas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:llamas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create llama" do
    assert_difference('Llama.count') do
      post :create, llama: { age: @llama.age, breed: @llama.breed, name: @llama.name }
    end

    assert_redirected_to llama_path(assigns(:llama))
  end

  test "should show llama" do
    get :show, id: @llama
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @llama
    assert_response :success
  end

  test "should update llama" do
    patch :update, id: @llama, llama: { age: @llama.age, breed: @llama.breed, name: @llama.name }
    assert_redirected_to llama_path(assigns(:llama))
  end

  test "should destroy llama" do
    assert_difference('Llama.count', -1) do
      delete :destroy, id: @llama
    end

    assert_redirected_to llamas_path
  end
end
