require "test_helper"

class LogTestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get log_test_index_url
    assert_response :success
  end
end
