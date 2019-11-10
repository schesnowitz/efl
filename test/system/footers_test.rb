require "application_system_test_case"

class FootersTest < ApplicationSystemTestCase
  setup do
    @footer = footers(:one)
  end

  test "visiting the index" do
    visit footers_url
    assert_selector "h1", text: "Footers"
  end

  test "creating a Footer" do
    visit footers_url
    click_on "New Footer"

    fill_in "String 1", with: @footer.string_1
    fill_in "String 2", with: @footer.string_2
    fill_in "String 3", with: @footer.string_3
    fill_in "String 4", with: @footer.string_4
    fill_in "String 5", with: @footer.string_5
    click_on "Create Footer"

    assert_text "Footer was successfully created"
    click_on "Back"
  end

  test "updating a Footer" do
    visit footers_url
    click_on "Edit", match: :first

    fill_in "String 1", with: @footer.string_1
    fill_in "String 2", with: @footer.string_2
    fill_in "String 3", with: @footer.string_3
    fill_in "String 4", with: @footer.string_4
    fill_in "String 5", with: @footer.string_5
    click_on "Update Footer"

    assert_text "Footer was successfully updated"
    click_on "Back"
  end

  test "destroying a Footer" do
    visit footers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Footer was successfully destroyed"
  end
end
