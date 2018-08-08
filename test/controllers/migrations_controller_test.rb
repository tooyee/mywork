require 'test_helper'

class MigrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @migration = migrations(:one)
  end

  test "should get index" do
    get migrations_url
    assert_response :success
  end

  test "should get new" do
    get new_migration_url
    assert_response :success
  end

  test "should create migration" do
    assert_difference('Migration.count') do
      post migrations_url, params: { migration: { add_afteractiveunitid_to_activeflow: @migration.add_afteractiveunitid_to_activeflow, afteractiveunit_id: @migration.afteractiveunit_id } }
    end

    assert_redirected_to migration_url(Migration.last)
  end

  test "should show migration" do
    get migration_url(@migration)
    assert_response :success
  end

  test "should get edit" do
    get edit_migration_url(@migration)
    assert_response :success
  end

  test "should update migration" do
    patch migration_url(@migration), params: { migration: { add_afteractiveunitid_to_activeflow: @migration.add_afteractiveunitid_to_activeflow, afteractiveunit_id: @migration.afteractiveunit_id } }
    assert_redirected_to migration_url(@migration)
  end

  test "should destroy migration" do
    assert_difference('Migration.count', -1) do
      delete migration_url(@migration)
    end

    assert_redirected_to migrations_url
  end
end
