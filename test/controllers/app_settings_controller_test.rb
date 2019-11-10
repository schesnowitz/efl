require 'test_helper'

class AppSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_setting = app_settings(:one)
  end

  test "should get index" do
    get app_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_app_setting_url
    assert_response :success
  end

  test "should create app_setting" do
    assert_difference('AppSetting.count') do
      post app_settings_url, params: { app_setting: { boolian_1: @app_setting.boolian_1, mailer_send_to_email1: @app_setting.mailer_send_to_email1, mailer_send_to_email2: @app_setting.mailer_send_to_email2, string_1: @app_setting.string_1, string_2: @app_setting.string_2, string_3: @app_setting.string_3, string_4: @app_setting.string_4, string_5: @app_setting.string_5 } }
    end

    assert_redirected_to app_setting_url(AppSetting.last)
  end

  test "should show app_setting" do
    get app_setting_url(@app_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_setting_url(@app_setting)
    assert_response :success
  end

  test "should update app_setting" do
    patch app_setting_url(@app_setting), params: { app_setting: { boolian_1: @app_setting.boolian_1, mailer_send_to_email1: @app_setting.mailer_send_to_email1, mailer_send_to_email2: @app_setting.mailer_send_to_email2, string_1: @app_setting.string_1, string_2: @app_setting.string_2, string_3: @app_setting.string_3, string_4: @app_setting.string_4, string_5: @app_setting.string_5 } }
    assert_redirected_to app_setting_url(@app_setting)
  end

  test "should destroy app_setting" do
    assert_difference('AppSetting.count', -1) do
      delete app_setting_url(@app_setting)
    end

    assert_redirected_to app_settings_url
  end
end
