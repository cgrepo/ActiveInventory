require 'test_helper'

class CopiersControllerTest < ActionController::TestCase
  setup do
    @copier = copiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:copiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create copier" do
    assert_difference('Copier.count') do
      post :create, copier: { Dependency_id: @copier.Dependency_id, brand: @copier.brand, buy_date: @copier.buy_date, model: @copier.model, nfactura: @copier.nfactura, ninventary: @copier.ninventary, notes: @copier.notes, nserie: @copier.nserie, operational: @copier.operational, reazon: @copier.reazon }
    end

    assert_redirected_to copier_path(assigns(:copier))
  end

  test "should show copier" do
    get :show, id: @copier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @copier
    assert_response :success
  end

  test "should update copier" do
    patch :update, id: @copier, copier: { Dependency_id: @copier.Dependency_id, brand: @copier.brand, buy_date: @copier.buy_date, model: @copier.model, nfactura: @copier.nfactura, ninventary: @copier.ninventary, notes: @copier.notes, nserie: @copier.nserie, operational: @copier.operational, reazon: @copier.reazon }
    assert_redirected_to copier_path(assigns(:copier))
  end

  test "should destroy copier" do
    assert_difference('Copier.count', -1) do
      delete :destroy, id: @copier
    end

    assert_redirected_to copiers_path
  end
end
