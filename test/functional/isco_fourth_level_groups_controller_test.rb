require 'test_helper'

class IscoFourthLevelGroupsControllerTest < ActionController::TestCase
  setup do
    @isco_fourth_level_group = isco_fourth_level_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:isco_fourth_level_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create isco_fourth_level_group" do
    assert_difference('IscoFourthLevelGroup.count') do
      post :create, isco_fourth_level_group: @isco_fourth_level_group.attributes
    end

    assert_redirected_to isco_fourth_level_group_path(assigns(:isco_fourth_level_group))
  end

  test "should show isco_fourth_level_group" do
    get :show, id: @isco_fourth_level_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @isco_fourth_level_group
    assert_response :success
  end

  test "should update isco_fourth_level_group" do
    put :update, id: @isco_fourth_level_group, isco_fourth_level_group: @isco_fourth_level_group.attributes
    assert_redirected_to isco_fourth_level_group_path(assigns(:isco_fourth_level_group))
  end

  test "should destroy isco_fourth_level_group" do
    assert_difference('IscoFourthLevelGroup.count', -1) do
      delete :destroy, id: @isco_fourth_level_group
    end

    assert_redirected_to isco_fourth_level_groups_path
  end
end
