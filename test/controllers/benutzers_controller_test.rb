require "test_helper"

class BenutzersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @benutzer = benutzers(:one)
  end

  test "should get index" do
    get benutzers_url
    assert_response :success
  end

  test "should get new" do
    get new_benutzer_url
    assert_response :success
  end

  test "should create benutzer" do
    assert_difference("Benutzer.count") do
      post benutzers_url, params: { benutzer: { email_address: @benutzer.email_address, password: @benutzer.password, password_confirmation: @benutzer.password_confirmation, role: @benutzer.role } }
    end

    assert_redirected_to benutzer_url(Benutzer.last)
  end

  test "should show benutzer" do
    get benutzer_url(@benutzer)
    assert_response :success
  end

  test "should get edit" do
    get edit_benutzer_url(@benutzer)
    assert_response :success
  end

  test "should update benutzer" do
    patch benutzer_url(@benutzer), params: { benutzer: { email_address: @benutzer.email_address, password: @benutzer.password, password_confirmation: @benutzer.password_confirmation, role: @benutzer.role } }
    assert_redirected_to benutzer_url(@benutzer)
  end

  test "should destroy benutzer" do
    assert_difference("Benutzer.count", -1) do
      delete benutzer_url(@benutzer)
    end

    assert_redirected_to benutzers_url
  end
end
