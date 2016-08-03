require 'test_helper'

class ComputerBrandsControllerTest < ActionController::TestCase
  setup do
    @computer_brand = computer_brands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:computer_brands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create computer_brand" do
    assert_difference('ComputerBrand.count') do
      post :create, computer_brand: { name: @computer_brand.name }
    end

    assert_redirected_to computer_brand_path(assigns(:computer_brand))
  end

  test "should show computer_brand" do
    get :show, id: @computer_brand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @computer_brand
    assert_response :success
  end

  test "should update computer_brand" do
    patch :update, id: @computer_brand, computer_brand: { name: @computer_brand.name }
    assert_redirected_to computer_brand_path(assigns(:computer_brand))
  end

  test "should destroy computer_brand" do
    assert_difference('ComputerBrand.count', -1) do
      delete :destroy, id: @computer_brand
    end

    assert_redirected_to computer_brands_path
  end
end
