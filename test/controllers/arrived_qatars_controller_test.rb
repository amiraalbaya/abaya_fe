require 'test_helper'

class ArrivedQatarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arrived_qatar = arrived_qatars(:one)
  end

  test "should get index" do
    get arrived_qatars_url
    assert_response :success
  end

  test "should get new" do
    get new_arrived_qatar_url
    assert_response :success
  end

  test "should create arrived_qatar" do
    assert_difference('ArrivedQatar.count') do
      post arrived_qatars_url, params: { arrived_qatar: { comment: @arrived_qatar.comment, date_arrived_pittsburgh: @arrived_qatar.date_arrived_pittsburgh, date_arrived_qatar: @arrived_qatar.date_arrived_qatar, date_delivered: @arrived_qatar.date_delivered, delivered: @arrived_qatar.delivered, description: @arrived_qatar.description, sender: @arrived_qatar.sender, shipping_weight: @arrived_qatar.shipping_weight } }
    end

    assert_redirected_to arrived_qatar_url(ArrivedQatar.last)
  end

  test "should show arrived_qatar" do
    get arrived_qatar_url(@arrived_qatar)
    assert_response :success
  end

  test "should get edit" do
    get edit_arrived_qatar_url(@arrived_qatar)
    assert_response :success
  end

  test "should update arrived_qatar" do
    patch arrived_qatar_url(@arrived_qatar), params: { arrived_qatar: { comment: @arrived_qatar.comment, date_arrived_pittsburgh: @arrived_qatar.date_arrived_pittsburgh, date_arrived_qatar: @arrived_qatar.date_arrived_qatar, date_delivered: @arrived_qatar.date_delivered, delivered: @arrived_qatar.delivered, description: @arrived_qatar.description, sender: @arrived_qatar.sender, shipping_weight: @arrived_qatar.shipping_weight } }
    assert_redirected_to arrived_qatar_url(@arrived_qatar)
  end

  test "should destroy arrived_qatar" do
    assert_difference('ArrivedQatar.count', -1) do
      delete arrived_qatar_url(@arrived_qatar)
    end

    assert_redirected_to arrived_qatars_url
  end
end
