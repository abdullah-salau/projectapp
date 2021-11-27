require "test_helper"

class Con1ControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get con1_home_url
    assert_response :success
  end
end
