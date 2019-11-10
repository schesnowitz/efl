require "application_system_test_case"

class PerformancesTest < ApplicationSystemTestCase
  setup do
    @performance = performances(:one)
  end

  test "visiting the index" do
    visit performances_url
    assert_selector "h1", text: "Performances"
  end

  test "creating a Performance" do
    visit performances_url
    click_on "New Performance"

    fill_in "Integer 1", with: @performance.integer_1
    fill_in "Integer 2", with: @performance.integer_2
    fill_in "Integer 3", with: @performance.integer_3
    fill_in "Integer 4", with: @performance.integer_4
    fill_in "String 1", with: @performance.string_1
    fill_in "String 10", with: @performance.string_10
    fill_in "String 11", with: @performance.string_11
    fill_in "String 12", with: @performance.string_12
    fill_in "String 13", with: @performance.string_13
    fill_in "String 14", with: @performance.string_14
    fill_in "String 15", with: @performance.string_15
    fill_in "String 2", with: @performance.string_2
    fill_in "String 3", with: @performance.string_3
    fill_in "String 4", with: @performance.string_4
    fill_in "String 5", with: @performance.string_5
    fill_in "String 6", with: @performance.string_6
    fill_in "String 7", with: @performance.string_7
    fill_in "String 8", with: @performance.string_8
    fill_in "String 9", with: @performance.string_9
    click_on "Create Performance"

    assert_text "Performance was successfully created"
    click_on "Back"
  end

  test "updating a Performance" do
    visit performances_url
    click_on "Edit", match: :first

    fill_in "Integer 1", with: @performance.integer_1
    fill_in "Integer 2", with: @performance.integer_2
    fill_in "Integer 3", with: @performance.integer_3
    fill_in "Integer 4", with: @performance.integer_4
    fill_in "String 1", with: @performance.string_1
    fill_in "String 10", with: @performance.string_10
    fill_in "String 11", with: @performance.string_11
    fill_in "String 12", with: @performance.string_12
    fill_in "String 13", with: @performance.string_13
    fill_in "String 14", with: @performance.string_14
    fill_in "String 15", with: @performance.string_15
    fill_in "String 2", with: @performance.string_2
    fill_in "String 3", with: @performance.string_3
    fill_in "String 4", with: @performance.string_4
    fill_in "String 5", with: @performance.string_5
    fill_in "String 6", with: @performance.string_6
    fill_in "String 7", with: @performance.string_7
    fill_in "String 8", with: @performance.string_8
    fill_in "String 9", with: @performance.string_9
    click_on "Update Performance"

    assert_text "Performance was successfully updated"
    click_on "Back"
  end

  test "destroying a Performance" do
    visit performances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Performance was successfully destroyed"
  end
end
