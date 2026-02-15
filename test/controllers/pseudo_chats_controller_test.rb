require "test_helper"

class PseudoChatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pseudo_chat = pseudo_chats(:one)
  end

  test "should get index" do
    get pseudo_chats_url
    assert_response :success
  end

  test "should create pseudo_chat" do
    assert_difference("PseudoChat.count") do
      post pseudo_chats_url, params: { pseudo_chat: { message: @pseudo_chat.message } }
    end

    assert_redirected_to pseudo_chats_url
  end
end
