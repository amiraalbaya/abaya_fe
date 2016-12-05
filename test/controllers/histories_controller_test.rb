require 'test_helper'

class HistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @history = histories(:one)
  end

  test "should get index" do
    get histories_url
    assert_response :success
  end

  test "should get new" do
    get new_history_url
    assert_response :success
  end

  test "should create history" do
    assert_difference('History.count') do
      post histories_url, params: { history: { comment: @history.comment, date_arrived_pittsburgh: @history.date_arrived_pittsburgh, date_arrived_qatar: @history.date_arrived_qatar, date_delivered: @history.date_delivered, delivered: @history.delivered, description: @history.description, discarded: @history.discarded, sender: @history.sender, shipping_weight: @history.shipping_weight } }
    end

    assert_redirected_to history_url(History.last)
  end

  test "should show history" do
    get history_url(@history)
    assert_response :success
  end

  test "should get edit" do
    get edit_history_url(@history)
    assert_response :success
  end

  test "should update history" do
    patch history_url(@history), params: { history: { comment: @history.comment, date_arrived_pittsburgh: @history.date_arrived_pittsburgh, date_arrived_qatar: @history.date_arrived_qatar, date_delivered: @history.date_delivered, delivered: @history.delivered, description: @history.description, discarded: @history.discarded, sender: @history.sender, shipping_weight: @history.shipping_weight } }
    assert_redirected_to history_url(@history)
  end

  test "should destroy history" do
    assert_difference('History.count', -1) do
      delete history_url(@history)
    end

    assert_redirected_to histories_url
  end
end
