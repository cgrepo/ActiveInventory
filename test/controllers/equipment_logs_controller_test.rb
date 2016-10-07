require 'test_helper'

class EquipmentLogsControllerTest < ActionController::TestCase
  setup do
    @equipment_log = equipment_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment_log" do
    assert_difference('EquipmentLog.count') do
      post :create, equipment_log: { diagnosis: @equipment_log.diagnosis, genus: @equipment_log.genus, inDate: @equipment_log.inDate, key: @equipment_log.key, outDate: @equipment_log.outDate, solution: @equipment_log.solution }
    end

    assert_redirected_to equipment_log_path(assigns(:equipment_log))
  end

  test "should show equipment_log" do
    get :show, id: @equipment_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment_log
    assert_response :success
  end

  test "should update equipment_log" do
    patch :update, id: @equipment_log, equipment_log: { diagnosis: @equipment_log.diagnosis, genus: @equipment_log.genus, inDate: @equipment_log.inDate, key: @equipment_log.key, outDate: @equipment_log.outDate, solution: @equipment_log.solution }
    assert_redirected_to equipment_log_path(assigns(:equipment_log))
  end

  test "should destroy equipment_log" do
    assert_difference('EquipmentLog.count', -1) do
      delete :destroy, id: @equipment_log
    end

    assert_redirected_to equipment_logs_path
  end
end
