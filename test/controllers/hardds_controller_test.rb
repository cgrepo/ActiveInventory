require 'test_helper'

class HarddsControllerTest < ActionController::TestCase
  setup do
    @hardd = hardds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hardds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hardd" do
    assert_difference('Hardd.count') do
      post :create, hardd: { size: @hardd.size, tsize: @hardd.tsize }
    end

    assert_redirected_to hardd_path(assigns(:hardd))
  end

  test "should show hardd" do
    get :show, id: @hardd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hardd
    assert_response :success
  end

  test "should update hardd" do
    patch :update, id: @hardd, hardd: { size: @hardd.size, tsize: @hardd.tsize }
    assert_redirected_to hardd_path(assigns(:hardd))
  end

  test "should destroy hardd" do
    assert_difference('Hardd.count', -1) do
      delete :destroy, id: @hardd
    end

    assert_redirected_to hardds_path
  end
end
