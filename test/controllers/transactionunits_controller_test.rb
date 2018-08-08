require 'test_helper'

class TransactionunitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transactionunit = transactionunits(:one)
  end

  test "should get index" do
    get transactionunits_url
    assert_response :success
  end

  test "should get new" do
    get new_transactionunit_url
    assert_response :success
  end

  test "should create transactionunit" do
    assert_difference('Transactionunit.count') do
      post transactionunits_url, params: { transactionunit: { businessunit_id: @transactionunit.businessunit_id, code: @transactionunit.code, name: @transactionunit.name, transactiontype: @transactionunit.transactiontype } }
    end

    assert_redirected_to transactionunit_url(Transactionunit.last)
  end

  test "should show transactionunit" do
    get transactionunit_url(@transactionunit)
    assert_response :success
  end

  test "should get edit" do
    get edit_transactionunit_url(@transactionunit)
    assert_response :success
  end

  test "should update transactionunit" do
    patch transactionunit_url(@transactionunit), params: { transactionunit: { businessunit_id: @transactionunit.businessunit_id, code: @transactionunit.code, name: @transactionunit.name, transactiontype: @transactionunit.transactiontype } }
    assert_redirected_to transactionunit_url(@transactionunit)
  end

  test "should destroy transactionunit" do
    assert_difference('Transactionunit.count', -1) do
      delete transactionunit_url(@transactionunit)
    end

    assert_redirected_to transactionunits_url
  end
end
