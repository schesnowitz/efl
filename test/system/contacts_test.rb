require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "creating a Contact" do
    visit contacts_url
    click_on "New Contact"

    fill_in "String 1", with: @contact.string_1
    fill_in "String 10", with: @contact.string_10
    fill_in "String 11", with: @contact.string_11
    fill_in "String 12", with: @contact.string_12
    fill_in "String 13", with: @contact.string_13
    fill_in "String 14", with: @contact.string_14
    fill_in "String 15", with: @contact.string_15
    fill_in "String 2", with: @contact.string_2
    fill_in "String 3", with: @contact.string_3
    fill_in "String 4", with: @contact.string_4
    fill_in "String 5", with: @contact.string_5
    fill_in "String 6", with: @contact.string_6
    fill_in "String 7", with: @contact.string_7
    fill_in "String 8", with: @contact.string_8
    fill_in "String 9", with: @contact.string_9
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "updating a Contact" do
    visit contacts_url
    click_on "Edit", match: :first

    fill_in "String 1", with: @contact.string_1
    fill_in "String 10", with: @contact.string_10
    fill_in "String 11", with: @contact.string_11
    fill_in "String 12", with: @contact.string_12
    fill_in "String 13", with: @contact.string_13
    fill_in "String 14", with: @contact.string_14
    fill_in "String 15", with: @contact.string_15
    fill_in "String 2", with: @contact.string_2
    fill_in "String 3", with: @contact.string_3
    fill_in "String 4", with: @contact.string_4
    fill_in "String 5", with: @contact.string_5
    fill_in "String 6", with: @contact.string_6
    fill_in "String 7", with: @contact.string_7
    fill_in "String 8", with: @contact.string_8
    fill_in "String 9", with: @contact.string_9
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact" do
    visit contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact was successfully destroyed"
  end
end
