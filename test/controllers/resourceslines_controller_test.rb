require 'test_helper'

class ResourceslinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resourcesline = resourceslines(:one)
  end

  test "should get index" do
    get resourceslines_url
    assert_response :success
  end

  test "should get new" do
    get new_resourcesline_url
    assert_response :success
  end

  test "should create resourcesline" do
    assert_difference('Resourcesline.count') do
      post resourceslines_url, params: { resourcesline: { active_id: @resourcesline.active_id, business_id: @resourcesline.business_id, cost: @resourcesline.cost, price: @resourcesline.price, quantity: @resourcesline.quantity, resource_id: @resourcesline.resource_id, status: @resourcesline.status, vatgroup: @resourcesline.vatgroup, whscode: @resourcesline.whscode } }
    end

    assert_redirected_to resourcesline_url(Resourcesline.last)
  end

  test "should show resourcesline" do
    get resourcesline_url(@resourcesline)
    assert_response :success
  end

  test "should get edit" do
    get edit_resourcesline_url(@resourcesline)
    assert_response :success
  end

  test "should update resourcesline" do
    patch resourcesline_url(@resourcesline), params: { resourcesline: { active_id: @resourcesline.active_id, business_id: @resourcesline.business_id, cost: @resourcesline.cost, price: @resourcesline.price, quantity: @resourcesline.quantity, resource_id: @resourcesline.resource_id, status: @resourcesline.status, vatgroup: @resourcesline.vatgroup, whscode: @resourcesline.whscode } }
    assert_redirected_to resourcesline_url(@resourcesline)
  end

  test "should destroy resourcesline" do
    assert_difference('Resourcesline.count', -1) do
      delete resourcesline_url(@resourcesline)
    end

    assert_redirected_to resourceslines_url
  end
end
