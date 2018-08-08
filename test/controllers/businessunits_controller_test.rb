require 'test_helper'

class BusinessunitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @businessunit = businessunits(:one)
  end

  test "should get index" do
    get businessunits_url
    assert_response :success
  end

  test "should get new" do
    get new_businessunit_url
    assert_response :success
  end

  test "should create businessunit" do
    assert_difference('Businessunit.count') do
      post businessunits_url, params: { businessunit: { code: @businessunit.code, name: @businessunit.name } }
    end

    assert_redirected_to businessunit_url(Businessunit.last)
  end

  test "should show businessunit" do
    get businessunit_url(@businessunit)
    assert_response :success
  end

  test "should get edit" do
    get edit_businessunit_url(@businessunit)
    assert_response :success
  end

  test "should update businessunit" do
    patch businessunit_url(@businessunit), params: { businessunit: { code: @businessunit.code, name: @businessunit.name } }
    assert_redirected_to businessunit_url(@businessunit)
  end

  test "should destroy businessunit" do
    assert_difference('Businessunit.count', -1) do
      delete businessunit_url(@businessunit)
    end

    assert_redirected_to businessunits_url
  end
end
