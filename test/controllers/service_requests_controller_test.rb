require 'test_helper'

class ServiceRequestsControllerTest < ActionController::TestCase
  setup do
    @service_request = service_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_request" do
    assert_difference('ServiceRequest.count') do
      post :create, service_request: { Copier_id: @service_request.Copier_id, Delegation_id: @service_request.Delegation_id, Dependency_id: @service_request.Dependency_id, DocumentRequest: @service_request.DocumentRequest, ExecutionDate: @service_request.ExecutionDate, History: @service_request.History, ProviderDiagnosis: @service_request.ProviderDiagnosis, Provider_id: @service_request.Provider_id, RequestDate: @service_request.RequestDate, idFolio: @service_request.idFolio, itDiagnosis: @service_request.itDiagnosis, kind: @service_request.kind, material: @service_request.material }
    end

    assert_redirected_to service_request_path(assigns(:service_request))
  end

  test "should show service_request" do
    get :show, id: @service_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_request
    assert_response :success
  end

  test "should update service_request" do
    patch :update, id: @service_request, service_request: { Copier_id: @service_request.Copier_id, Delegation_id: @service_request.Delegation_id, Dependency_id: @service_request.Dependency_id, DocumentRequest: @service_request.DocumentRequest, ExecutionDate: @service_request.ExecutionDate, History: @service_request.History, ProviderDiagnosis: @service_request.ProviderDiagnosis, Provider_id: @service_request.Provider_id, RequestDate: @service_request.RequestDate, idFolio: @service_request.idFolio, itDiagnosis: @service_request.itDiagnosis, kind: @service_request.kind, material: @service_request.material }
    assert_redirected_to service_request_path(assigns(:service_request))
  end

  test "should destroy service_request" do
    assert_difference('ServiceRequest.count', -1) do
      delete :destroy, id: @service_request
    end

    assert_redirected_to service_requests_path
  end
end
