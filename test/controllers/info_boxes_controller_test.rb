require 'test_helper'

class InfoBoxesControllerTest < ActionController::TestCase
  setup do
    @info_box = info_boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:info_boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create info_box" do
    assert_difference('InfoBox.count') do
      post :create, info_box: { active: @info_box.active, content: @info_box.content, icon: @info_box.icon, title: @info_box.title }
    end

    assert_redirected_to info_box_path(assigns(:info_box))
  end

  test "should show info_box" do
    get :show, id: @info_box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @info_box
    assert_response :success
  end

  test "should update info_box" do
    patch :update, id: @info_box, info_box: { active: @info_box.active, content: @info_box.content, icon: @info_box.icon, title: @info_box.title }
    assert_redirected_to info_box_path(assigns(:info_box))
  end

  test "should destroy info_box" do
    assert_difference('InfoBox.count', -1) do
      delete :destroy, id: @info_box
    end

    assert_redirected_to info_boxes_path
  end
end
