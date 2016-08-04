require 'test_helper'

class OfficevsControllerTest < ActionController::TestCase
  setup do
    @officev = officevs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:officevs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create officev" do
    assert_difference('Officev.count') do
      post :create, officev: { name: @officev.name }
    end

    assert_redirected_to officev_path(assigns(:officev))
  end

  test "should show officev" do
    get :show, id: @officev
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @officev
    assert_response :success
  end

  test "should update officev" do
    patch :update, id: @officev, officev: { name: @officev.name }
    assert_redirected_to officev_path(assigns(:officev))
  end

  test "should destroy officev" do
    assert_difference('Officev.count', -1) do
      delete :destroy, id: @officev
    end

    assert_redirected_to officevs_path
  end
end
