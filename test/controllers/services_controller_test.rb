require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get services_url
    assert_response :success
  end

  test "should get new" do
    get new_service_url
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post services_url, params: { service: { string_1: @service.string_1, string_10: @service.string_10, string_11: @service.string_11, string_12: @service.string_12, string_13: @service.string_13, string_14: @service.string_14, string_15: @service.string_15, string_16: @service.string_16, string_17: @service.string_17, string_18: @service.string_18, string_19: @service.string_19, string_2: @service.string_2, string_20: @service.string_20, string_21: @service.string_21, string_22: @service.string_22, string_23: @service.string_23, string_24: @service.string_24, string_25: @service.string_25, string_26: @service.string_26, string_27: @service.string_27, string_28: @service.string_28, string_29: @service.string_29, string_3: @service.string_3, string_30: @service.string_30, string_4: @service.string_4, string_5: @service.string_5, string_6: @service.string_6, string_7: @service.string_7, string_8: @service.string_8, string_9: @service.string_9 } }
    end

    assert_redirected_to service_url(Service.last)
  end

  test "should show service" do
    get service_url(@service)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_url(@service)
    assert_response :success
  end

  test "should update service" do
    patch service_url(@service), params: { service: { string_1: @service.string_1, string_10: @service.string_10, string_11: @service.string_11, string_12: @service.string_12, string_13: @service.string_13, string_14: @service.string_14, string_15: @service.string_15, string_16: @service.string_16, string_17: @service.string_17, string_18: @service.string_18, string_19: @service.string_19, string_2: @service.string_2, string_20: @service.string_20, string_21: @service.string_21, string_22: @service.string_22, string_23: @service.string_23, string_24: @service.string_24, string_25: @service.string_25, string_26: @service.string_26, string_27: @service.string_27, string_28: @service.string_28, string_29: @service.string_29, string_3: @service.string_3, string_30: @service.string_30, string_4: @service.string_4, string_5: @service.string_5, string_6: @service.string_6, string_7: @service.string_7, string_8: @service.string_8, string_9: @service.string_9 } }
    assert_redirected_to service_url(@service)
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete service_url(@service)
    end

    assert_redirected_to services_url
  end
end
