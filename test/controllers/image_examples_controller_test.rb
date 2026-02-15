require "test_helper"

class ImageExamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_example = image_examples(:one)
  end

  test "should get index" do
    get image_examples_url
    assert_response :success
  end

  test "should get new" do
    get new_image_example_url
    assert_response :success
  end

  test "should create image_example" do
    assert_difference("ImageExample.count") do
      post image_examples_url, params: { image_example: { body: @image_example.body } }, headers: { "HTTP_AUTHORIZATION" => ActionController::HttpAuthentication::Basic.encode_credentials('devpix', 'foo') }
    end

    assert_redirected_to image_example_url(ImageExample.last)
  end

  test "should show image_example" do
    get image_example_url(@image_example)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_example_url(@image_example)
    assert_response :success
  end

  test "should update image_example" do
    patch image_example_url(@image_example), params: { image_example: { body: @image_example.body } }
    assert_redirected_to image_example_url(@image_example)
  end

  test "should destroy image_example" do
    assert_difference("ImageExample.count", -1) do
      delete image_example_url(@image_example)
    end

    assert_redirected_to image_examples_url
  end
end
