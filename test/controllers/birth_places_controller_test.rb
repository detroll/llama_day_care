require 'test_helper'

class BirthPlacesControllerTest < ActionController::TestCase
  setup do
    @birth_place = birth_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:birth_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create birth_place" do
    assert_difference('BirthPlace.count') do
      post :create, birth_place: { birth: @birth_place.birth }
    end

    assert_redirected_to birth_place_path(assigns(:birth_place))
  end

  test "should show birth_place" do
    get :show, id: @birth_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @birth_place
    assert_response :success
  end

  test "should update birth_place" do
    patch :update, id: @birth_place, birth_place: { birth: @birth_place.birth }
    assert_redirected_to birth_place_path(assigns(:birth_place))
  end

  test "should destroy birth_place" do
    assert_difference('BirthPlace.count', -1) do
      delete :destroy, id: @birth_place
    end

    assert_redirected_to birth_places_path
  end
end
