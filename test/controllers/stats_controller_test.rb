require 'test_helper'

class StatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stat = stats(:one)
  end

  test "should get index" do
    get stats_url
    assert_response :success
  end

  test "should get new" do
    get new_stat_url
    assert_response :success
  end

  test "should create stat" do
    assert_difference('Stat.count') do
      post stats_url, params: { stat: { string_1: @stat.string_1, string_2: @stat.string_2, string_3: @stat.string_3, string_4: @stat.string_4, string_5: @stat.string_5, string_num_1: @stat.string_num_1, string_num_2: @stat.string_num_2, string_num_3: @stat.string_num_3 } }
    end

    assert_redirected_to stat_url(Stat.last)
  end

  test "should show stat" do
    get stat_url(@stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_stat_url(@stat)
    assert_response :success
  end

  test "should update stat" do
    patch stat_url(@stat), params: { stat: { string_1: @stat.string_1, string_2: @stat.string_2, string_3: @stat.string_3, string_4: @stat.string_4, string_5: @stat.string_5, string_num_1: @stat.string_num_1, string_num_2: @stat.string_num_2, string_num_3: @stat.string_num_3 } }
    assert_redirected_to stat_url(@stat)
  end

  test "should destroy stat" do
    assert_difference('Stat.count', -1) do
      delete stat_url(@stat)
    end

    assert_redirected_to stats_url
  end
end
