require 'test_helper'

class ComputersControllerTest < ActionController::TestCase
  setup do
    @computer = computers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:computers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create computer" do
    assert_difference('Computer.count') do
      post :create, computer: { Dependency_id: @computer.Dependency_id, Network_id: @computer.Network_id, Worker_id: @computer.Worker_id, bluetooth: @computer.bluetooth, brand: @computer.brand, buy_date: @computer.buy_date, genus: @computer.genus, hd: @computer.hd, iplan: @computer.iplan, ipwifi: @computer.ipwifi, maclan: @computer.maclan, macwifi: @computer.macwifi, masklan: @computer.masklan, maskwifi: @computer.maskwifi, memory: @computer.memory, model: @computer.model, name: @computer.name, nfactura: @computer.nfactura, ninventary: @computer.ninventary, nserie: @computer.nserie, operational: @computer.operational, os: @computer.os, processor: @computer.processor, reazon: @computer.reazon, users: @computer.users, voffice: @computer.voffice, wifi: @computer.wifi, workgroup: @computer.workgroup }
    end

    assert_redirected_to computer_path(assigns(:computer))
  end

  test "should show computer" do
    get :show, id: @computer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @computer
    assert_response :success
  end

  test "should update computer" do
    patch :update, id: @computer, computer: { Dependency_id: @computer.Dependency_id, Network_id: @computer.Network_id, Worker_id: @computer.Worker_id, bluetooth: @computer.bluetooth, brand: @computer.brand, buy_date: @computer.buy_date, genus: @computer.genus, hd: @computer.hd, iplan: @computer.iplan, ipwifi: @computer.ipwifi, maclan: @computer.maclan, macwifi: @computer.macwifi, masklan: @computer.masklan, maskwifi: @computer.maskwifi, memory: @computer.memory, model: @computer.model, name: @computer.name, nfactura: @computer.nfactura, ninventary: @computer.ninventary, nserie: @computer.nserie, operational: @computer.operational, os: @computer.os, processor: @computer.processor, reazon: @computer.reazon, users: @computer.users, voffice: @computer.voffice, wifi: @computer.wifi, workgroup: @computer.workgroup }
    assert_redirected_to computer_path(assigns(:computer))
  end

  test "should destroy computer" do
    assert_difference('Computer.count', -1) do
      delete :destroy, id: @computer
    end

    assert_redirected_to computers_path
  end
end
