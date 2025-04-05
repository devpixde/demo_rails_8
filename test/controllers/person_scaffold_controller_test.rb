require "test_helper"

class PersonScaffoldControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get person_scaffold_index_url
    assert_response :success
  end
end
