require 'test_helper'

class CategoryTagsControllerTest < ActionController::TestCase
  setup do
    @category_tag = category_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_tag" do
    assert_difference('CategoryTag.count') do
      post :create, category_tag: { category_id: @category_tag.category_id, createdt: @category_tag.createdt, item_id: @category_tag.item_id }
    end

    assert_redirected_to category_tag_path(assigns(:category_tag))
  end

  test "should show category_tag" do
    get :show, id: @category_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_tag
    assert_response :success
  end

  test "should update category_tag" do
    put :update, id: @category_tag, category_tag: { category_id: @category_tag.category_id, createdt: @category_tag.createdt, item_id: @category_tag.item_id }
    assert_redirected_to category_tag_path(assigns(:category_tag))
  end

  test "should destroy category_tag" do
    assert_difference('CategoryTag.count', -1) do
      delete :destroy, id: @category_tag
    end

    assert_redirected_to category_tags_path
  end
end
