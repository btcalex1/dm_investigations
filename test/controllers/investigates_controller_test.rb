require 'test_helper'

class InvestigatesControllerTest < ActionController::TestCase
  setup do
    @investigate = investigates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:investigates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create investigate" do
    assert_difference('Investigate.count') do
      post :create, investigate: { customer_id_number: @investigate.customer_id_number, customer_name: @investigate.customer_name, date_of_flag: @investigate.date_of_flag, notes: @investigate.notes, open_or_closed: @investigate.open_or_closed, transaction_amount: @investigate.transaction_amount }
    end

    assert_redirected_to investigate_path(assigns(:investigate))
  end

  test "should show investigate" do
    get :show, id: @investigate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @investigate
    assert_response :success
  end

  test "should update investigate" do
    patch :update, id: @investigate, investigate: { customer_id_number: @investigate.customer_id_number, customer_name: @investigate.customer_name, date_of_flag: @investigate.date_of_flag, notes: @investigate.notes, open_or_closed: @investigate.open_or_closed, transaction_amount: @investigate.transaction_amount }
    assert_redirected_to investigate_path(assigns(:investigate))
  end

  test "should destroy investigate" do
    assert_difference('Investigate.count', -1) do
      delete :destroy, id: @investigate
    end

    assert_redirected_to investigates_path
  end
end
