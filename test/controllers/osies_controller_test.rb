require 'test_helper'

class OsiesControllerTest < ActionController::TestCase
  setup do
    @osy = osies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:osies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create osy" do
    assert_difference('Osy.count') do
      post :create, osy: { name: @osy.name, version: @osy.version }
    end

    assert_redirected_to osy_path(assigns(:osy))
  end

  test "should show osy" do
    get :show, id: @osy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @osy
    assert_response :success
  end

  test "should update osy" do
    patch :update, id: @osy, osy: { name: @osy.name, version: @osy.version }
    assert_redirected_to osy_path(assigns(:osy))
  end

  test "should destroy osy" do
    assert_difference('Osy.count', -1) do
      delete :destroy, id: @osy
    end

    assert_redirected_to osies_path
  end
end
