require 'test_helper'

class IncomingContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incoming_contact = incoming_contacts(:one)
  end

  test "should get index" do
    get incoming_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_incoming_contact_url
    assert_response :success
  end

  test "should create incoming_contact" do
    assert_difference('IncomingContact.count') do
      post incoming_contacts_url, params: { incoming_contact: { email: @incoming_contact.email, message: @incoming_contact.message, name: @incoming_contact.name } }
    end

    assert_redirected_to incoming_contact_url(IncomingContact.last)
  end

  test "should show incoming_contact" do
    get incoming_contact_url(@incoming_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_incoming_contact_url(@incoming_contact)
    assert_response :success
  end

  test "should update incoming_contact" do
    patch incoming_contact_url(@incoming_contact), params: { incoming_contact: { email: @incoming_contact.email, message: @incoming_contact.message, name: @incoming_contact.name } }
    assert_redirected_to incoming_contact_url(@incoming_contact)
  end

  test "should destroy incoming_contact" do
    assert_difference('IncomingContact.count', -1) do
      delete incoming_contact_url(@incoming_contact)
    end

    assert_redirected_to incoming_contacts_url
  end
end
