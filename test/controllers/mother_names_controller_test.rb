require 'test_helper'

class MotherNamesControllerTest < ActionController::TestCase
  setup do
    @mother_name = mother_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mother_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mother_name" do
    assert_difference('MotherName.count') do
      post :create, mother_name: { mothername: @mother_name.mothername }
    end

    assert_redirected_to mother_name_path(assigns(:mother_name))
  end

  test "should show mother_name" do
    get :show, id: @mother_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mother_name
    assert_response :success
  end

  test "should update mother_name" do
    patch :update, id: @mother_name, mother_name: { mothername: @mother_name.mothername }
    assert_redirected_to mother_name_path(assigns(:mother_name))
  end

  test "should destroy mother_name" do
    assert_difference('MotherName.count', -1) do
      delete :destroy, id: @mother_name
    end

    assert_redirected_to mother_names_path
  end
end
