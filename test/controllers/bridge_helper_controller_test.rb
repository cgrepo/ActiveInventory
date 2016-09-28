require 'test_helper'

class BridgeHelperControllerTest < ActionController::TestCase
  test "should get get_dependencies" do
    get :get_dependencies
    assert_response :success
  end

end
