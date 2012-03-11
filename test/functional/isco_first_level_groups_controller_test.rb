require 'test_helper'

class IscoFirstLevelGroupsControllerTest < ActionController::TestCase
  setup do
    @isco_first_level_group = isco_first_level_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:isco_first_level_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create isco_first_level_group" do
    assert_difference('IscoFirstLevelGroup.count') do
      post :create, isco_first_level_group: @isco_first_level_group.attributes
    end

    assert_redirected_to isco_first_level_group_path(assigns(:isco_first_level_group))
  end

  test "should show isco_first_level_group" do
    get :show, id: @isco_first_level_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @isco_first_level_group
    assert_response :success
  end

  test "should update isco_first_level_group" do
    put :update, id: @isco_first_level_group, isco_first_level_group: @isco_first_level_group.attributes
    assert_redirected_to isco_first_level_group_path(assigns(:isco_first_level_group))
  end

  test "should destroy isco_first_level_group" do
    assert_difference('IscoFirstLevelGroup.count', -1) do
      delete :destroy, id: @isco_first_level_group
    end

    assert_redirected_to isco_first_level_groups_path
  end
end
