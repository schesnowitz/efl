require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { string_1: @contact.string_1, string_10: @contact.string_10, string_11: @contact.string_11, string_12: @contact.string_12, string_13: @contact.string_13, string_14: @contact.string_14, string_15: @contact.string_15, string_2: @contact.string_2, string_3: @contact.string_3, string_4: @contact.string_4, string_5: @contact.string_5, string_6: @contact.string_6, string_7: @contact.string_7, string_8: @contact.string_8, string_9: @contact.string_9 } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { string_1: @contact.string_1, string_10: @contact.string_10, string_11: @contact.string_11, string_12: @contact.string_12, string_13: @contact.string_13, string_14: @contact.string_14, string_15: @contact.string_15, string_2: @contact.string_2, string_3: @contact.string_3, string_4: @contact.string_4, string_5: @contact.string_5, string_6: @contact.string_6, string_7: @contact.string_7, string_8: @contact.string_8, string_9: @contact.string_9 } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end
end
