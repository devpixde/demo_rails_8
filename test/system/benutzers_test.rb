require "application_system_test_case"

class BenutzersTest < ApplicationSystemTestCase
  setup do
    @benutzer = benutzers(:one)
  end

  test "visiting the index" do
    visit benutzers_url
    assert_selector "h1", text: "Benutzers"
  end

  test "should create benutzer" do
    visit benutzers_url
    click_on "New benutzer"

    fill_in "Email address", with: @benutzer.email_address
    fill_in "Password", with: @benutzer.password
    fill_in "Password confirmation", with: @benutzer.password_confirmation
    fill_in "Role", with: @benutzer.role
    click_on "Create Benutzer"

    assert_text "Benutzer was successfully created"
    click_on "Back"
  end

  test "should update Benutzer" do
    visit benutzer_url(@benutzer)
    click_on "Edit this benutzer", match: :first

    fill_in "Email address", with: @benutzer.email_address
    fill_in "Password", with: @benutzer.password
    fill_in "Password confirmation", with: @benutzer.password_confirmation
    fill_in "Role", with: @benutzer.role
    click_on "Update Benutzer"

    assert_text "Benutzer was successfully updated"
    click_on "Back"
  end

  test "should destroy Benutzer" do
    visit benutzer_url(@benutzer)
    click_on "Destroy this benutzer", match: :first

    assert_text "Benutzer was successfully destroyed"
  end
end
