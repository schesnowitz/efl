require 'test_helper'

class DriverApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driver_application = driver_applications(:one)
  end

  test "should get index" do
    get driver_applications_url
    assert_response :success
  end

  test "should get new" do
    get new_driver_application_url
    assert_response :success
  end

  test "should create driver_application" do
    assert_difference('DriverApplication.count') do
      post driver_applications_url, params: { driver_application: { name: @driver_application.name } }
    end

    assert_redirected_to driver_application_url(DriverApplication.last)
  end

  test "should show driver_application" do
    get driver_application_url(@driver_application)
    assert_response :success
  end

  test "should get edit" do
    get edit_driver_application_url(@driver_application)
    assert_response :success
  end

  test "should update driver_application" do
    patch driver_application_url(@driver_application), params: { driver_application: { name: @driver_application.name } }
    assert_redirected_to driver_application_url(@driver_application)
  end

  test "should destroy driver_application" do
    assert_difference('DriverApplication.count', -1) do
      delete driver_application_url(@driver_application)
    end

    assert_redirected_to driver_applications_url
  end
end
