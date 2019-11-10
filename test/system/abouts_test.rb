require "application_system_test_case"

class AboutsTest < ApplicationSystemTestCase
  setup do
    @about = abouts(:one)
  end

  test "visiting the index" do
    visit abouts_url
    assert_selector "h1", text: "Abouts"
  end

  test "creating a About" do
    visit abouts_url
    click_on "New About"

    fill_in "String 1", with: @about.string_1
    fill_in "String 10", with: @about.string_10
    fill_in "String 11", with: @about.string_11
    fill_in "String 12", with: @about.string_12
    fill_in "String 13", with: @about.string_13
    fill_in "String 14", with: @about.string_14
    fill_in "String 15", with: @about.string_15
    fill_in "String 2", with: @about.string_2
    fill_in "String 3", with: @about.string_3
    fill_in "String 4", with: @about.string_4
    fill_in "String 5", with: @about.string_5
    fill_in "String 6", with: @about.string_6
    fill_in "String 7", with: @about.string_7
    fill_in "String 8", with: @about.string_8
    fill_in "String 9", with: @about.string_9
    click_on "Create About"

    assert_text "About was successfully created"
    click_on "Back"
  end

  test "updating a About" do
    visit abouts_url
    click_on "Edit", match: :first

    fill_in "String 1", with: @about.string_1
    fill_in "String 10", with: @about.string_10
    fill_in "String 11", with: @about.string_11
    fill_in "String 12", with: @about.string_12
    fill_in "String 13", with: @about.string_13
    fill_in "String 14", with: @about.string_14
    fill_in "String 15", with: @about.string_15
    fill_in "String 2", with: @about.string_2
    fill_in "String 3", with: @about.string_3
    fill_in "String 4", with: @about.string_4
    fill_in "String 5", with: @about.string_5
    fill_in "String 6", with: @about.string_6
    fill_in "String 7", with: @about.string_7
    fill_in "String 8", with: @about.string_8
    fill_in "String 9", with: @about.string_9
    click_on "Update About"

    assert_text "About was successfully updated"
    click_on "Back"
  end

  test "destroying a About" do
    visit abouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "About was successfully destroyed"
  end
end
