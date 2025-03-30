require "test_helper"

class TurboframetargetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get turboframetarget_index_url
    assert_response :success
  end
end
