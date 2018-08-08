require 'test_helper'

class TransactionflowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transactionflow = transactionflows(:one)
  end

  test "should get index" do
    get transactionflows_url
    assert_response :success
  end

  test "should get new" do
    get new_transactionflow_url
    assert_response :success
  end

  test "should create transactionflow" do
    assert_difference('Transactionflow.count') do
      post transactionflows_url, params: { transactionflow: { businessunit_id: @transactionflow.businessunit_id, floworderid: @transactionflow.floworderid, flowtype: @transactionflow.flowtype, transactiontype: @transactionflow.transactiontype, transactionunit_id: @transactionflow.transactionunit_id } }
    end

    assert_redirected_to transactionflow_url(Transactionflow.last)
  end

  test "should show transactionflow" do
    get transactionflow_url(@transactionflow)
    assert_response :success
  end

  test "should get edit" do
    get edit_transactionflow_url(@transactionflow)
    assert_response :success
  end

  test "should update transactionflow" do
    patch transactionflow_url(@transactionflow), params: { transactionflow: { businessunit_id: @transactionflow.businessunit_id, floworderid: @transactionflow.floworderid, flowtype: @transactionflow.flowtype, transactiontype: @transactionflow.transactiontype, transactionunit_id: @transactionflow.transactionunit_id } }
    assert_redirected_to transactionflow_url(@transactionflow)
  end

  test "should destroy transactionflow" do
    assert_difference('Transactionflow.count', -1) do
      delete transactionflow_url(@transactionflow)
    end

    assert_redirected_to transactionflows_url
  end
end
