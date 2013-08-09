require 'test_helper'

class UserWishlistsControllerTest < ActionController::TestCase
  setup do
    @user_wishlist = user_wishlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_wishlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_wishlist" do
    assert_difference('UserWishlist.count') do
      post :create, user_wishlist:{  }
    end

    assert_redirected_to user_wishlist_path(assigns(:user_wishlist))
  end

  test "should show user_wishlist" do
    get :show, id:@user_wishlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id:@user_wishlist
    assert_response :success
  end

  test "should update user_wishlist" do
    put :update, id:@user_wishlist, user_wishlist:{  }
    assert_redirected_to user_wishlist_path(assigns(:user_wishlist))
  end

  test "should destroy user_wishlist" do
    assert_difference('UserWishlist.count', -1) do
      delete :destroy, id:@user_wishlist
    end

    assert_redirected_to user_wishlists_path
  end
end
