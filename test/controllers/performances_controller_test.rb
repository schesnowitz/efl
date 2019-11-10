require 'test_helper'

class PerformancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @performance = performances(:one)
  end

  test "should get index" do
    get performances_url
    assert_response :success
  end

  test "should get new" do
    get new_performance_url
    assert_response :success
  end

  test "should create performance" do
    assert_difference('Performance.count') do
      post performances_url, params: { performance: { integer_1: @performance.integer_1, integer_2: @performance.integer_2, integer_3: @performance.integer_3, integer_4: @performance.integer_4, string_1: @performance.string_1, string_10: @performance.string_10, string_11: @performance.string_11, string_12: @performance.string_12, string_13: @performance.string_13, string_14: @performance.string_14, string_15: @performance.string_15, string_2: @performance.string_2, string_3: @performance.string_3, string_4: @performance.string_4, string_5: @performance.string_5, string_6: @performance.string_6, string_7: @performance.string_7, string_8: @performance.string_8, string_9: @performance.string_9 } }
    end

    assert_redirected_to performance_url(Performance.last)
  end

  test "should show performance" do
    get performance_url(@performance)
    assert_response :success
  end

  test "should get edit" do
    get edit_performance_url(@performance)
    assert_response :success
  end

  test "should update performance" do
    patch performance_url(@performance), params: { performance: { integer_1: @performance.integer_1, integer_2: @performance.integer_2, integer_3: @performance.integer_3, integer_4: @performance.integer_4, string_1: @performance.string_1, string_10: @performance.string_10, string_11: @performance.string_11, string_12: @performance.string_12, string_13: @performance.string_13, string_14: @performance.string_14, string_15: @performance.string_15, string_2: @performance.string_2, string_3: @performance.string_3, string_4: @performance.string_4, string_5: @performance.string_5, string_6: @performance.string_6, string_7: @performance.string_7, string_8: @performance.string_8, string_9: @performance.string_9 } }
    assert_redirected_to performance_url(@performance)
  end

  test "should destroy performance" do
    assert_difference('Performance.count', -1) do
      delete performance_url(@performance)
    end

    assert_redirected_to performances_url
  end
end
