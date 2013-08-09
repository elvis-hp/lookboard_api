require 'test_helper'

class UserWishlistsSharesControllerTest < ActionController::TestCase
  setup do
    @user_wishlists_share = user_wishlists_shares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_wishlists_shares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_wishlists_share" do
    assert_difference('UserWishlistsShare.count') do
      post :create, user_wishlists_share:{  }
    end

    assert_redirected_to user_wishlists_share_path(assigns(:user_wishlists_share))
  end

  test "should show user_wishlists_share" do
    get :show, id:@user_wishlists_share
    assert_response :success
  end

  test "should get edit" do
    get :edit, id:@user_wishlists_share
    assert_response :success
  end

  test "should update user_wishlists_share" do
    put :update, id:@user_wishlists_share, user_wishlists_share:{  }
    assert_redirected_to user_wishlists_share_path(assigns(:user_wishlists_share))
  end

  test "should destroy user_wishlists_share" do
    assert_difference('UserWishlistsShare.count', -1) do
      delete :destroy, id:@user_wishlists_share
    end

    assert_redirected_to user_wishlists_shares_path
  end
end
