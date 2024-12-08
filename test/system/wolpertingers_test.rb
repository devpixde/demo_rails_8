require "application_system_test_case"

class WolpertingersTest < ApplicationSystemTestCase
  setup do
    @wolpertinger = wolpertingers(:one)
  end

  test "visiting the index" do
    visit wolpertingers_url
    assert_selector "h1", text: "Wolpertingers"
  end

  test "should create wolpertinger" do
    visit wolpertingers_url
    click_on "New wolpertinger"

    fill_in "Age", with: @wolpertinger.age
    fill_in "Color", with: @wolpertinger.color
    check "Is walking" if @wolpertinger.is_walking
    fill_in "Mood", with: @wolpertinger.mood
    fill_in "State", with: @wolpertinger.state
    click_on "Create Wolpertinger"

    assert_text "Wolpertinger was successfully created"
    click_on "Back"
  end

  test "should update Wolpertinger" do
    visit wolpertinger_url(@wolpertinger)
    click_on "Edit this wolpertinger", match: :first

    fill_in "Age", with: @wolpertinger.age
    fill_in "Color", with: @wolpertinger.color
    check "Is walking" if @wolpertinger.is_walking
    fill_in "Mood", with: @wolpertinger.mood
    fill_in "State", with: @wolpertinger.state
    click_on "Update Wolpertinger"

    assert_text "Wolpertinger was successfully updated"
    click_on "Back"
  end

  test "should destroy Wolpertinger" do
    visit wolpertinger_url(@wolpertinger)
    click_on "Destroy this wolpertinger", match: :first

    assert_text "Wolpertinger was successfully destroyed"
  end
end
