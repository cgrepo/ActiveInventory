require 'test_helper'

class PrintersControllerTest < ActionController::TestCase
  setup do
    @printer = printers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:printers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create printer" do
    assert_difference('Printer.count') do
      post :create, printer: { Dependency_id: @printer.Dependency_id, brand: @printer.brand, buy_date: @printer.buy_date, genus: @printer.genus, model: @printer.model, nfactura: @printer.nfactura, ninventary: @printer.ninventary, notes: @printer.notes, nserie: @printer.nserie, operational: @printer.operational, reazon: @printer.reazon }
    end

    assert_redirected_to printer_path(assigns(:printer))
  end

  test "should show printer" do
    get :show, id: @printer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @printer
    assert_response :success
  end

  test "should update printer" do
    patch :update, id: @printer, printer: { Dependency_id: @printer.Dependency_id, brand: @printer.brand, buy_date: @printer.buy_date, genus: @printer.genus, model: @printer.model, nfactura: @printer.nfactura, ninventary: @printer.ninventary, notes: @printer.notes, nserie: @printer.nserie, operational: @printer.operational, reazon: @printer.reazon }
    assert_redirected_to printer_path(assigns(:printer))
  end

  test "should destroy printer" do
    assert_difference('Printer.count', -1) do
      delete :destroy, id: @printer
    end

    assert_redirected_to printers_path
  end
end
