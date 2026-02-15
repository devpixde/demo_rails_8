require "test_helper"

class WolpertingersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wolpertinger = wolpertingers(:one)
  end

  test "should get index" do
    get wolpertingers_url
    assert_response :success
  end

  test "should get new" do
    get new_wolpertinger_url
    assert_response :success
  end

  test "should create wolpertinger" do
    assert_difference("Wolpertinger.count") do
      post wolpertingers_url, params: { wolpertinger: { name: "Bello2", age: @wolpertinger.age, color: @wolpertinger.color, is_walking: @wolpertinger.is_walking, mood: @wolpertinger.mood, state: @wolpertinger.state } }
    end

    assert_redirected_to wolpertinger_url(Wolpertinger.last)
  end

  test "should show wolpertinger" do
    get wolpertinger_url(@wolpertinger)
    assert_response :success
  end

  test "should get edit" do
    get edit_wolpertinger_url(@wolpertinger)
    assert_response :success
  end

  test "should update wolpertinger" do
    patch wolpertinger_url(@wolpertinger), params: { wolpertinger: { name: @wolpertinger.name, age: @wolpertinger.age, color: @wolpertinger.color, is_walking: @wolpertinger.is_walking, mood: @wolpertinger.mood, state: @wolpertinger.state } }
    assert_redirected_to wolpertinger_url(@wolpertinger)
  end

  test "should destroy wolpertinger" do
    assert_difference("Wolpertinger.count", -1) do
      delete wolpertinger_url(@wolpertinger)
    end

    assert_redirected_to wolpertingers_url
  end
end
