require "application_system_test_case"

class TakeActionsTest < ApplicationSystemTestCase
  setup do
    @take_action = take_actions(:one)
  end

  test "visiting the index" do
    visit take_actions_url
    assert_selector "h1", text: "Take Actions"
  end

  test "creating a Take action" do
    visit take_actions_url
    click_on "New Take Action"

    check "Hide take action" if @take_action.hide_take_action
    fill_in "Take action string 1", with: @take_action.take_action_string_1
    click_on "Create Take action"

    assert_text "Take action was successfully created"
    click_on "Back"
  end

  test "updating a Take action" do
    visit take_actions_url
    click_on "Edit", match: :first

    check "Hide take action" if @take_action.hide_take_action
    fill_in "Take action string 1", with: @take_action.take_action_string_1
    click_on "Update Take action"

    assert_text "Take action was successfully updated"
    click_on "Back"
  end

  test "destroying a Take action" do
    visit take_actions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Take action was successfully destroyed"
  end
end
