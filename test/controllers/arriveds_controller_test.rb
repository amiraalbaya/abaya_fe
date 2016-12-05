require 'test_helper'

class ArrivedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arrived = arriveds(:one)
  end

  test "should get index" do
    get arriveds_url
    assert_response :success
  end

  test "should get new" do
    get new_arrived_url
    assert_response :success
  end

  test "should create arrived" do
    assert_difference('Arrived.count') do
      post arriveds_url, params: { arrived: { comment: @arrived.comment, date_arrived_pittsburgh: @arrived.date_arrived_pittsburgh, description: @arrived.description, discard: @arrived.discard, id: @arrived.id, sender_string: @arrived.sender_string, shipping_weight: @arrived.shipping_weight } }
    end

    assert_redirected_to arrived_url(Arrived.last)
  end

  test "should show arrived" do
    get arrived_url(@arrived)
    assert_response :success
  end

  test "should get edit" do
    get edit_arrived_url(@arrived)
    assert_response :success
  end

  test "should update arrived" do
    patch arrived_url(@arrived), params: { arrived: { comment: @arrived.comment, date_arrived_pittsburgh: @arrived.date_arrived_pittsburgh, description: @arrived.description, discard: @arrived.discard, id: @arrived.id, sender_string: @arrived.sender_string, shipping_weight: @arrived.shipping_weight } }
    assert_redirected_to arrived_url(@arrived)
  end

  test "should destroy arrived" do
    assert_difference('Arrived.count', -1) do
      delete arrived_url(@arrived)
    end

    assert_redirected_to arriveds_url
  end
end
