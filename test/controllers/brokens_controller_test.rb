require 'test_helper'

class BrokensControllerTest < ActionController::TestCase
  setup do
    @broken = brokens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brokens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create broken" do
    assert_difference('Broken.count') do
      post :create, broken: { idEquipment: @broken.idEquipment, notes: @broken.notes, pic: @broken.pic, picOf: @broken.picOf, picSerie: @broken.picSerie }
    end

    assert_redirected_to broken_path(assigns(:broken))
  end

  test "should show broken" do
    get :show, id: @broken
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @broken
    assert_response :success
  end

  test "should update broken" do
    patch :update, id: @broken, broken: { idEquipment: @broken.idEquipment, notes: @broken.notes, pic: @broken.pic, picOf: @broken.picOf, picSerie: @broken.picSerie }
    assert_redirected_to broken_path(assigns(:broken))
  end

  test "should destroy broken" do
    assert_difference('Broken.count', -1) do
      delete :destroy, id: @broken
    end

    assert_redirected_to brokens_path
  end
end
