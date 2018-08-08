require 'test_helper'

class ActiveflowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activeflow = activeflows(:one)
  end

  test "should get index" do
    get activeflows_url
    assert_response :success
  end

  test "should get new" do
    get new_activeflow_url
    assert_response :success
  end

  test "should create activeflow" do
    assert_difference('Activeflow.count') do
      post activeflows_url, params: { activeflow: { accouttype: @activeflow.accouttype, activeunit_id: @activeflow.activeunit_id, beforeactiveunit_id: @activeflow.beforeactiveunit_id, contenttype: @activeflow.contenttype, copyresourcestype: @activeflow.copyresourcestype, floworderid: @activeflow.floworderid, flowtype: @activeflow.flowtype, resourcestype: @activeflow.resourcestype, stockaccounttype: @activeflow.stockaccounttype, subtransactiontype: @activeflow.subtransactiontype, transactionflow_id: @activeflow.transactionflow_id, vouchertemplatetype: @activeflow.vouchertemplatetype } }
    end

    assert_redirected_to activeflow_url(Activeflow.last)
  end

  test "should show activeflow" do
    get activeflow_url(@activeflow)
    assert_response :success
  end

  test "should get edit" do
    get edit_activeflow_url(@activeflow)
    assert_response :success
  end

  test "should update activeflow" do
    patch activeflow_url(@activeflow), params: { activeflow: { accouttype: @activeflow.accouttype, activeunit_id: @activeflow.activeunit_id, beforeactiveunit_id: @activeflow.beforeactiveunit_id, contenttype: @activeflow.contenttype, copyresourcestype: @activeflow.copyresourcestype, floworderid: @activeflow.floworderid, flowtype: @activeflow.flowtype, resourcestype: @activeflow.resourcestype, stockaccounttype: @activeflow.stockaccounttype, subtransactiontype: @activeflow.subtransactiontype, transactionflow_id: @activeflow.transactionflow_id, vouchertemplatetype: @activeflow.vouchertemplatetype } }
    assert_redirected_to activeflow_url(@activeflow)
  end

  test "should destroy activeflow" do
    assert_difference('Activeflow.count', -1) do
      delete activeflow_url(@activeflow)
    end

    assert_redirected_to activeflows_url
  end
end
