require "application_system_test_case"

class DriverApplicationsTest < ApplicationSystemTestCase
  setup do
    @driver_application = driver_applications(:one)
  end

  test "visiting the index" do
    visit driver_applications_url
    assert_selector "h1", text: "Driver Applications"
  end

  test "creating a Driver application" do
    visit driver_applications_url
    click_on "New Driver Application"

    fill_in "Name", with: @driver_application.name
    click_on "Create Driver application"

    assert_text "Driver application was successfully created"
    click_on "Back"
  end

  test "updating a Driver application" do
    visit driver_applications_url
    click_on "Edit", match: :first

    fill_in "Name", with: @driver_application.name
    click_on "Update Driver application"

    assert_text "Driver application was successfully updated"
    click_on "Back"
  end

  test "destroying a Driver application" do
    visit driver_applications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Driver application was successfully destroyed"
  end
end
