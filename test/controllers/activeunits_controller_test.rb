require 'test_helper'

class ActiveunitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activeunit = activeunits(:one)
  end

  test "should get index" do
    get activeunits_url
    assert_response :success
  end

  test "should get new" do
    get new_activeunit_url
    assert_response :success
  end

  test "should create activeunit" do
    assert_difference('Activeunit.count') do
      post activeunits_url, params: { activeunit: { accounttype: @activeunit.accounttype, code: @activeunit.code, name: @activeunit.name, transactionunit_id: @activeunit.transactionunit_id } }
    end

    assert_redirected_to activeunit_url(Activeunit.last)
  end

  test "should show activeunit" do
    get activeunit_url(@activeunit)
    assert_response :success
  end

  test "should get edit" do
    get edit_activeunit_url(@activeunit)
    assert_response :success
  end

  test "should update activeunit" do
    patch activeunit_url(@activeunit), params: { activeunit: { accounttype: @activeunit.accounttype, code: @activeunit.code, name: @activeunit.name, transactionunit_id: @activeunit.transactionunit_id } }
    assert_redirected_to activeunit_url(@activeunit)
  end

  test "should destroy activeunit" do
    assert_difference('Activeunit.count', -1) do
      delete activeunit_url(@activeunit)
    end

    assert_redirected_to activeunits_url
  end
end
