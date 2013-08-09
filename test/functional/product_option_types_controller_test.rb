require 'test_helper'

class ProductOptionTypesControllerTest < ActionController::TestCase
  setup do
    @product_option_type = product_option_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_option_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_option_type" do
    assert_difference('ProductOptionType.count') do
      post :create, product_option_type:{  }
    end

    assert_redirected_to product_option_type_path(assigns(:product_option_type))
  end

  test "should show product_option_type" do
    get :show, id:@product_option_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id:@product_option_type
    assert_response :success
  end

  test "should update product_option_type" do
    put :update, id:@product_option_type, product_option_type:{  }
    assert_redirected_to product_option_type_path(assigns(:product_option_type))
  end

  test "should destroy product_option_type" do
    assert_difference('ProductOptionType.count', -1) do
      delete :destroy, id:@product_option_type
    end

    assert_redirected_to product_option_types_path
  end
end
