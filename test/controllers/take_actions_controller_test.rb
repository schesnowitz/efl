require 'test_helper'

class TakeActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @take_action = take_actions(:one)
  end

  test "should get index" do
    get take_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_take_action_url
    assert_response :success
  end

  test "should create take_action" do
    assert_difference('TakeAction.count') do
      post take_actions_url, params: { take_action: { hide_take_action: @take_action.hide_take_action, take_action_string_1: @take_action.take_action_string_1 } }
    end

    assert_redirected_to take_action_url(TakeAction.last)
  end

  test "should show take_action" do
    get take_action_url(@take_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_take_action_url(@take_action)
    assert_response :success
  end

  test "should update take_action" do
    patch take_action_url(@take_action), params: { take_action: { hide_take_action: @take_action.hide_take_action, take_action_string_1: @take_action.take_action_string_1 } }
    assert_redirected_to take_action_url(@take_action)
  end

  test "should destroy take_action" do
    assert_difference('TakeAction.count', -1) do
      delete take_action_url(@take_action)
    end

    assert_redirected_to take_actions_url
  end
end
