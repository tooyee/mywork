require 'test_helper'

class BusinessflowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @businessflow = businessflows(:one)
  end

  test "should get index" do
    get businessflows_url
    assert_response :success
  end

  test "should get new" do
    get new_businessflow_url
    assert_response :success
  end

  test "should create businessflow" do
    assert_difference('Businessflow.count') do
      post businessflows_url, params: { businessflow: { businessunit_id: @businessflow.businessunit_id, code: @businessflow.code, name: @businessflow.name, remarks: @businessflow.remarks } }
    end

    assert_redirected_to businessflow_url(Businessflow.last)
  end

  test "should show businessflow" do
    get businessflow_url(@businessflow)
    assert_response :success
  end

  test "should get edit" do
    get edit_businessflow_url(@businessflow)
    assert_response :success
  end

  test "should update businessflow" do
    patch businessflow_url(@businessflow), params: { businessflow: { businessunit_id: @businessflow.businessunit_id, code: @businessflow.code, name: @businessflow.name, remarks: @businessflow.remarks } }
    assert_redirected_to businessflow_url(@businessflow)
  end

  test "should destroy businessflow" do
    assert_difference('Businessflow.count', -1) do
      delete businessflow_url(@businessflow)
    end

    assert_redirected_to businessflows_url
  end
end
