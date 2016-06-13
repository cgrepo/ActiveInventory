require 'test_helper'

class ConsumablesControllerTest < ActionController::TestCase
  setup do
    @consumable = consumables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consumables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consumable" do
    assert_difference('Consumable.count') do
      post :create, consumable: { Copier_id: @consumable.Copier_id, Printer_id: @consumable.Printer_id, genus: @consumable.genus, model: @consumable.model }
    end

    assert_redirected_to consumable_path(assigns(:consumable))
  end

  test "should show consumable" do
    get :show, id: @consumable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consumable
    assert_response :success
  end

  test "should update consumable" do
    patch :update, id: @consumable, consumable: { Copier_id: @consumable.Copier_id, Printer_id: @consumable.Printer_id, genus: @consumable.genus, model: @consumable.model }
    assert_redirected_to consumable_path(assigns(:consumable))
  end

  test "should destroy consumable" do
    assert_difference('Consumable.count', -1) do
      delete :destroy, id: @consumable
    end

    assert_redirected_to consumables_path
  end
end
