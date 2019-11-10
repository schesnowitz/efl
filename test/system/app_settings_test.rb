require "application_system_test_case"

class AppSettingsTest < ApplicationSystemTestCase
  setup do
    @app_setting = app_settings(:one)
  end

  test "visiting the index" do
    visit app_settings_url
    assert_selector "h1", text: "App Settings"
  end

  test "creating a App setting" do
    visit app_settings_url
    click_on "New App Setting"

    fill_in "Boolian 1", with: @app_setting.boolian_1
    fill_in "Mailer send to email1", with: @app_setting.mailer_send_to_email1
    fill_in "Mailer send to email2", with: @app_setting.mailer_send_to_email2
    fill_in "String 1", with: @app_setting.string_1
    fill_in "String 2", with: @app_setting.string_2
    fill_in "String 3", with: @app_setting.string_3
    fill_in "String 4", with: @app_setting.string_4
    fill_in "String 5", with: @app_setting.string_5
    click_on "Create App setting"

    assert_text "App setting was successfully created"
    click_on "Back"
  end

  test "updating a App setting" do
    visit app_settings_url
    click_on "Edit", match: :first

    fill_in "Boolian 1", with: @app_setting.boolian_1
    fill_in "Mailer send to email1", with: @app_setting.mailer_send_to_email1
    fill_in "Mailer send to email2", with: @app_setting.mailer_send_to_email2
    fill_in "String 1", with: @app_setting.string_1
    fill_in "String 2", with: @app_setting.string_2
    fill_in "String 3", with: @app_setting.string_3
    fill_in "String 4", with: @app_setting.string_4
    fill_in "String 5", with: @app_setting.string_5
    click_on "Update App setting"

    assert_text "App setting was successfully updated"
    click_on "Back"
  end

  test "destroying a App setting" do
    visit app_settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "App setting was successfully destroyed"
  end
end
