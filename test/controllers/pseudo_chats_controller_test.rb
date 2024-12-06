require "test_helper"

class PseudoChatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pseudo_chat = pseudo_chats(:one)
  end

  test "should get index" do
    get pseudo_chats_url
    assert_response :success
  end

  test "should get new" do
    get new_pseudo_chat_url
    assert_response :success
  end

  test "should create pseudo_chat" do
    assert_difference("PseudoChat.count") do
      post pseudo_chats_url, params: { pseudo_chat: { message: @pseudo_chat.message } }
    end

    assert_redirected_to pseudo_chat_url(PseudoChat.last)
  end

  test "should show pseudo_chat" do
    get pseudo_chat_url(@pseudo_chat)
    assert_response :success
  end

  test "should get edit" do
    get edit_pseudo_chat_url(@pseudo_chat)
    assert_response :success
  end

  test "should update pseudo_chat" do
    patch pseudo_chat_url(@pseudo_chat), params: { pseudo_chat: { message: @pseudo_chat.message } }
    assert_redirected_to pseudo_chat_url(@pseudo_chat)
  end

  test "should destroy pseudo_chat" do
    assert_difference("PseudoChat.count", -1) do
      delete pseudo_chat_url(@pseudo_chat)
    end

    assert_redirected_to pseudo_chats_url
  end
end
