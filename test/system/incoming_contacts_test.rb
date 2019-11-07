require "application_system_test_case"

class IncomingContactsTest < ApplicationSystemTestCase
  setup do
    @incoming_contact = incoming_contacts(:one)
  end

  test "visiting the index" do
    visit incoming_contacts_url
    assert_selector "h1", text: "Incoming Contacts"
  end

  test "creating a Incoming contact" do
    visit incoming_contacts_url
    click_on "New Incoming Contact"

    fill_in "Email", with: @incoming_contact.email
    fill_in "Message", with: @incoming_contact.message
    fill_in "Name", with: @incoming_contact.name
    click_on "Create Incoming contact"

    assert_text "Incoming contact was successfully created"
    click_on "Back"
  end

  test "updating a Incoming contact" do
    visit incoming_contacts_url
    click_on "Edit", match: :first

    fill_in "Email", with: @incoming_contact.email
    fill_in "Message", with: @incoming_contact.message
    fill_in "Name", with: @incoming_contact.name
    click_on "Update Incoming contact"

    assert_text "Incoming contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Incoming contact" do
    visit incoming_contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incoming contact was successfully destroyed"
  end
end
