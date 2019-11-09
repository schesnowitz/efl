require "application_system_test_case"

class StatsTest < ApplicationSystemTestCase
  setup do
    @stat = stats(:one)
  end

  test "visiting the index" do
    visit stats_url
    assert_selector "h1", text: "Stats"
  end

  test "creating a Stat" do
    visit stats_url
    click_on "New Stat"

    fill_in "String 1", with: @stat.string_1
    fill_in "String 2", with: @stat.string_2
    fill_in "String 3", with: @stat.string_3
    fill_in "String 4", with: @stat.string_4
    fill_in "String 5", with: @stat.string_5
    fill_in "String num 1", with: @stat.string_num_1
    fill_in "String num 2", with: @stat.string_num_2
    fill_in "String num 3", with: @stat.string_num_3
    click_on "Create Stat"

    assert_text "Stat was successfully created"
    click_on "Back"
  end

  test "updating a Stat" do
    visit stats_url
    click_on "Edit", match: :first

    fill_in "String 1", with: @stat.string_1
    fill_in "String 2", with: @stat.string_2
    fill_in "String 3", with: @stat.string_3
    fill_in "String 4", with: @stat.string_4
    fill_in "String 5", with: @stat.string_5
    fill_in "String num 1", with: @stat.string_num_1
    fill_in "String num 2", with: @stat.string_num_2
    fill_in "String num 3", with: @stat.string_num_3
    click_on "Update Stat"

    assert_text "Stat was successfully updated"
    click_on "Back"
  end

  test "destroying a Stat" do
    visit stats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stat was successfully destroyed"
  end
end
