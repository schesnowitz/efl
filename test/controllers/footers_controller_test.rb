require 'test_helper'

class FootersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @footer = footers(:one)
  end

  test "should get index" do
    get footers_url
    assert_response :success
  end

  test "should get new" do
    get new_footer_url
    assert_response :success
  end

  test "should create footer" do
    assert_difference('Footer.count') do
      post footers_url, params: { footer: { string_1: @footer.string_1, string_2: @footer.string_2, string_3: @footer.string_3, string_4: @footer.string_4, string_5: @footer.string_5 } }
    end

    assert_redirected_to footer_url(Footer.last)
  end

  test "should show footer" do
    get footer_url(@footer)
    assert_response :success
  end

  test "should get edit" do
    get edit_footer_url(@footer)
    assert_response :success
  end

  test "should update footer" do
    patch footer_url(@footer), params: { footer: { string_1: @footer.string_1, string_2: @footer.string_2, string_3: @footer.string_3, string_4: @footer.string_4, string_5: @footer.string_5 } }
    assert_redirected_to footer_url(@footer)
  end

  test "should destroy footer" do
    assert_difference('Footer.count', -1) do
      delete footer_url(@footer)
    end

    assert_redirected_to footers_url
  end
end
