require 'test_helper'

class AboutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @about = abouts(:one)
  end

  test "should get index" do
    get abouts_url
    assert_response :success
  end

  test "should get new" do
    get new_about_url
    assert_response :success
  end

  test "should create about" do
    assert_difference('About.count') do
      post abouts_url, params: { about: { string_1: @about.string_1, string_10: @about.string_10, string_11: @about.string_11, string_12: @about.string_12, string_13: @about.string_13, string_14: @about.string_14, string_15: @about.string_15, string_2: @about.string_2, string_3: @about.string_3, string_4: @about.string_4, string_5: @about.string_5, string_6: @about.string_6, string_7: @about.string_7, string_8: @about.string_8, string_9: @about.string_9 } }
    end

    assert_redirected_to about_url(About.last)
  end

  test "should show about" do
    get about_url(@about)
    assert_response :success
  end

  test "should get edit" do
    get edit_about_url(@about)
    assert_response :success
  end

  test "should update about" do
    patch about_url(@about), params: { about: { string_1: @about.string_1, string_10: @about.string_10, string_11: @about.string_11, string_12: @about.string_12, string_13: @about.string_13, string_14: @about.string_14, string_15: @about.string_15, string_2: @about.string_2, string_3: @about.string_3, string_4: @about.string_4, string_5: @about.string_5, string_6: @about.string_6, string_7: @about.string_7, string_8: @about.string_8, string_9: @about.string_9 } }
    assert_redirected_to about_url(@about)
  end

  test "should destroy about" do
    assert_difference('About.count', -1) do
      delete about_url(@about)
    end

    assert_redirected_to abouts_url
  end
end
