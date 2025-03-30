require "test_helper"

class TurboframeclocksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get turboframeclocks_index_url
    assert_response :success
  end
end
