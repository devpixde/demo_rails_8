require "application_system_test_case"

class PseudoChatsTest < ApplicationSystemTestCase
  setup do
    @pseudo_chat = pseudo_chats(:one)
  end

  test "visiting the index" do
    visit pseudo_chats_url
    assert_selector "h1", text: "Pseudo chats"
  end

  test "should create pseudo chat" do
    visit pseudo_chats_url
    click_on "New pseudo chat"

    fill_in "Message", with: @pseudo_chat.message
    click_on "Create Pseudo chat"

    assert_text "Pseudo chat was successfully created"
    click_on "Back"
  end

  test "should update Pseudo chat" do
    visit pseudo_chat_url(@pseudo_chat)
    click_on "Edit this pseudo chat", match: :first

    fill_in "Message", with: @pseudo_chat.message
    click_on "Update Pseudo chat"

    assert_text "Pseudo chat was successfully updated"
    click_on "Back"
  end

  test "should destroy Pseudo chat" do
    visit pseudo_chat_url(@pseudo_chat)
    click_on "Destroy this pseudo chat", match: :first

    assert_text "Pseudo chat was successfully destroyed"
  end
end
