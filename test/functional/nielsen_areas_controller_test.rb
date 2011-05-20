require 'test_helper'

class NielsenAreasControllerTest < ActionController::TestCase
  setup do
    @nielsen_area = nielsen_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nielsen_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nielsen_area" do
    assert_difference('NielsenArea.count') do
      post :create, :nielsen_area => @nielsen_area.attributes
    end

    assert_redirected_to nielsen_area_path(assigns(:nielsen_area))
  end

  test "should show nielsen_area" do
    get :show, :id => @nielsen_area.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nielsen_area.to_param
    assert_response :success
  end

  test "should update nielsen_area" do
    put :update, :id => @nielsen_area.to_param, :nielsen_area => @nielsen_area.attributes
    assert_redirected_to nielsen_area_path(assigns(:nielsen_area))
  end

  test "should destroy nielsen_area" do
    assert_difference('NielsenArea.count', -1) do
      delete :destroy, :id => @nielsen_area.to_param
    end

    assert_redirected_to nielsen_areas_path
  end
end
