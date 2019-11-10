require 'test_helper'

class HeadersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @header = headers(:one)
  end

  test "should get index" do
    get headers_url
    assert_response :success
  end

  test "should get new" do
    get new_header_url
    assert_response :success
  end

  test "should create header" do
    assert_difference('Header.count') do
      post headers_url, params: { header: { string_1: @header.string_1, string_2: @header.string_2, string_3: @header.string_3, string_4: @header.string_4 } }
    end

    assert_redirected_to header_url(Header.last)
  end

  test "should show header" do
    get header_url(@header)
    assert_response :success
  end

  test "should get edit" do
    get edit_header_url(@header)
    assert_response :success
  end

  test "should update header" do
    patch header_url(@header), params: { header: { string_1: @header.string_1, string_2: @header.string_2, string_3: @header.string_3, string_4: @header.string_4 } }
    assert_redirected_to header_url(@header)
  end

  test "should destroy header" do
    assert_difference('Header.count', -1) do
      delete header_url(@header)
    end

    assert_redirected_to headers_url
  end
end
