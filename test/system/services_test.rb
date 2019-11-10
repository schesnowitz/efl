require "application_system_test_case"

class ServicesTest < ApplicationSystemTestCase
  setup do
    @service = services(:one)
  end

  test "visiting the index" do
    visit services_url
    assert_selector "h1", text: "Services"
  end

  test "creating a Service" do
    visit services_url
    click_on "New Service"

    fill_in "String 1", with: @service.string_1
    fill_in "String 10", with: @service.string_10
    fill_in "String 11", with: @service.string_11
    fill_in "String 12", with: @service.string_12
    fill_in "String 13", with: @service.string_13
    fill_in "String 14", with: @service.string_14
    fill_in "String 15", with: @service.string_15
    fill_in "String 16", with: @service.string_16
    fill_in "String 17", with: @service.string_17
    fill_in "String 18", with: @service.string_18
    fill_in "String 19", with: @service.string_19
    fill_in "String 2", with: @service.string_2
    fill_in "String 20", with: @service.string_20
    fill_in "String 21", with: @service.string_21
    fill_in "String 22", with: @service.string_22
    fill_in "String 23", with: @service.string_23
    fill_in "String 24", with: @service.string_24
    fill_in "String 25", with: @service.string_25
    fill_in "String 26", with: @service.string_26
    fill_in "String 27", with: @service.string_27
    fill_in "String 28", with: @service.string_28
    fill_in "String 29", with: @service.string_29
    fill_in "String 3", with: @service.string_3
    fill_in "String 30", with: @service.string_30
    fill_in "String 4", with: @service.string_4
    fill_in "String 5", with: @service.string_5
    fill_in "String 6", with: @service.string_6
    fill_in "String 7", with: @service.string_7
    fill_in "String 8", with: @service.string_8
    fill_in "String 9", with: @service.string_9
    click_on "Create Service"

    assert_text "Service was successfully created"
    click_on "Back"
  end

  test "updating a Service" do
    visit services_url
    click_on "Edit", match: :first

    fill_in "String 1", with: @service.string_1
    fill_in "String 10", with: @service.string_10
    fill_in "String 11", with: @service.string_11
    fill_in "String 12", with: @service.string_12
    fill_in "String 13", with: @service.string_13
    fill_in "String 14", with: @service.string_14
    fill_in "String 15", with: @service.string_15
    fill_in "String 16", with: @service.string_16
    fill_in "String 17", with: @service.string_17
    fill_in "String 18", with: @service.string_18
    fill_in "String 19", with: @service.string_19
    fill_in "String 2", with: @service.string_2
    fill_in "String 20", with: @service.string_20
    fill_in "String 21", with: @service.string_21
    fill_in "String 22", with: @service.string_22
    fill_in "String 23", with: @service.string_23
    fill_in "String 24", with: @service.string_24
    fill_in "String 25", with: @service.string_25
    fill_in "String 26", with: @service.string_26
    fill_in "String 27", with: @service.string_27
    fill_in "String 28", with: @service.string_28
    fill_in "String 29", with: @service.string_29
    fill_in "String 3", with: @service.string_3
    fill_in "String 30", with: @service.string_30
    fill_in "String 4", with: @service.string_4
    fill_in "String 5", with: @service.string_5
    fill_in "String 6", with: @service.string_6
    fill_in "String 7", with: @service.string_7
    fill_in "String 8", with: @service.string_8
    fill_in "String 9", with: @service.string_9
    click_on "Update Service"

    assert_text "Service was successfully updated"
    click_on "Back"
  end

  test "destroying a Service" do
    visit services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service was successfully destroyed"
  end
end
