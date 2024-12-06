require "application_system_test_case"

class ImageExamplesTest < ApplicationSystemTestCase
  setup do
    @image_example = image_examples(:one)
  end

  test "visiting the index" do
    visit image_examples_url
    assert_selector "h1", text: "Image examples"
  end

  test "should create image example" do
    visit image_examples_url
    click_on "New image example"

    fill_in "Body", with: @image_example.body
    click_on "Create Image example"

    assert_text "Image example was successfully created"
    click_on "Back"
  end

  test "should update Image example" do
    visit image_example_url(@image_example)
    click_on "Edit this image example", match: :first

    fill_in "Body", with: @image_example.body
    click_on "Update Image example"

    assert_text "Image example was successfully updated"
    click_on "Back"
  end

  test "should destroy Image example" do
    visit image_example_url(@image_example)
    click_on "Destroy this image example", match: :first

    assert_text "Image example was successfully destroyed"
  end
end
