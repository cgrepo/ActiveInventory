require 'test_helper'

class ScannersControllerTest < ActionController::TestCase
  setup do
    @scanner = scanners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scanners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scanner" do
    assert_difference('Scanner.count') do
      post :create, scanner: { Delegation_id: @scanner.Delegation_id, Dependency_id: @scanner.Dependency_id, Network_id: @scanner.Network_id, bran: @scanner.bran, buy_date: @scanner.buy_date, ipnet: @scanner.ipnet, masknet: @scanner.masknet, model: @scanner.model, net: @scanner.net, netmac: @scanner.netmac, nfactura: @scanner.nfactura, ninventary: @scanner.ninventary, nserie: @scanner.nserie, operational: @scanner.operational, reazon: @scanner.reazon }
    end

    assert_redirected_to scanner_path(assigns(:scanner))
  end

  test "should show scanner" do
    get :show, id: @scanner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scanner
    assert_response :success
  end

  test "should update scanner" do
    patch :update, id: @scanner, scanner: { Delegation_id: @scanner.Delegation_id, Dependency_id: @scanner.Dependency_id, Network_id: @scanner.Network_id, bran: @scanner.bran, buy_date: @scanner.buy_date, ipnet: @scanner.ipnet, masknet: @scanner.masknet, model: @scanner.model, net: @scanner.net, netmac: @scanner.netmac, nfactura: @scanner.nfactura, ninventary: @scanner.ninventary, nserie: @scanner.nserie, operational: @scanner.operational, reazon: @scanner.reazon }
    assert_redirected_to scanner_path(assigns(:scanner))
  end

  test "should destroy scanner" do
    assert_difference('Scanner.count', -1) do
      delete :destroy, id: @scanner
    end

    assert_redirected_to scanners_path
  end
end
