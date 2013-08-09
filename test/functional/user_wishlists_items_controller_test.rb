require 'test_helper'

class UserWishlistsItemsControllerTest < ActionController::TestCase
  setup do
    @user_wishlists_item = user_wishlists_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_wishlists_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_wishlists_item" do
    assert_difference('UserWishlistsItem.count') do
      post :create, user_wishlists_item:{  }
    end

    assert_redirected_to user_wishlists_item_path(assigns(:user_wishlists_item))
  end

  test "should show user_wishlists_item" do
    get :show, id:@user_wishlists_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id:@user_wishlists_item
    assert_response :success
  end

  test "should update user_wishlists_item" do
    put :update, id:@user_wishlists_item, user_wishlists_item:{  }
    assert_redirected_to user_wishlists_item_path(assigns(:user_wishlists_item))
  end

  test "should destroy user_wishlists_item" do
    assert_difference('UserWishlistsItem.count', -1) do
      delete :destroy, id:@user_wishlists_item
    end

    assert_redirected_to user_wishlists_items_path
  end
end
