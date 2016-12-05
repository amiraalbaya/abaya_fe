require 'test_helper'

class MailItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mail_item = mail_items(:one)
  end

  test "should get index" do
    get mail_items_url
    assert_response :success
  end

  test "should get new" do
    get new_mail_item_url
    assert_response :success
  end

  test "should create mail_item" do
    assert_difference('MailItem.count') do
      post mail_items_url, params: { mail_item: { comment: @mail_item.comment, date_arrived_pittsburgh: @mail_item.date_arrived_pittsburgh, date_arrived_qatar: @mail_item.date_arrived_qatar, date_delivered: @mail_item.date_delivered, description: @mail_item.description, discard: @mail_item.discard, id: @mail_item.id, sender_string: @mail_item.sender_string, shipping_weight: @mail_item.shipping_weight, user_id: @mail_item.user_id } }
    end

    assert_redirected_to mail_item_url(MailItem.last)
  end

  test "should show mail_item" do
    get mail_item_url(@mail_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_mail_item_url(@mail_item)
    assert_response :success
  end

  test "should update mail_item" do
    patch mail_item_url(@mail_item), params: { mail_item: { comment: @mail_item.comment, date_arrived_pittsburgh: @mail_item.date_arrived_pittsburgh, date_arrived_qatar: @mail_item.date_arrived_qatar, date_delivered: @mail_item.date_delivered, description: @mail_item.description, discard: @mail_item.discard, id: @mail_item.id, sender_string: @mail_item.sender_string, shipping_weight: @mail_item.shipping_weight, user_id: @mail_item.user_id } }
    assert_redirected_to mail_item_url(@mail_item)
  end

  test "should destroy mail_item" do
    assert_difference('MailItem.count', -1) do
      delete mail_item_url(@mail_item)
    end

    assert_redirected_to mail_items_url
  end
end
