require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  setup do
    @category = category(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count') do
      post :create, category: { CategoryID: @category.CategoryID, CategoryName: @category.CategoryName, Description: @category.Description, DescriptionMain: @category.DescriptionMain, DescriptionMainP: @category.DescriptionMainP, DescriptionTag: @category.DescriptionTag, FromUser: @category.FromUser, HasChildren: @category.HasChildren, HasDeal: @category.HasDeal, Icon: @category.Icon, LanguageID: @category.LanguageID, Manufacturer: @category.Manufacturer, MetaGeoPlaceName: @category.MetaGeoPlaceName, MetaGeoRegion: @category.MetaGeoRegion, MetaKeywords: @category.MetaKeywords, MetaPageTopic: @category.MetaPageTopic, ParentID: @category.ParentID, Ranking: @category.Ranking, Seourl: @category.Seourl, Status: @category.Status, Title: @category.Title, TitleP: @category.TitleP, updatedtime: @category.updatedtime }
    end

    assert_redirected_to category_path(assigns(:category))
  end

  test "should show category" do
    get :show, id: @category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category
    assert_response :success
  end

  test "should update category" do
    put :update, id: @category, category: { CategoryID: @category.CategoryID, CategoryName: @category.CategoryName, Description: @category.Description, DescriptionMain: @category.DescriptionMain, DescriptionMainP: @category.DescriptionMainP, DescriptionTag: @category.DescriptionTag, FromUser: @category.FromUser, HasChildren: @category.HasChildren, HasDeal: @category.HasDeal, Icon: @category.Icon, LanguageID: @category.LanguageID, Manufacturer: @category.Manufacturer, MetaGeoPlaceName: @category.MetaGeoPlaceName, MetaGeoRegion: @category.MetaGeoRegion, MetaKeywords: @category.MetaKeywords, MetaPageTopic: @category.MetaPageTopic, ParentID: @category.ParentID, Ranking: @category.Ranking, Seourl: @category.Seourl, Status: @category.Status, Title: @category.Title, TitleP: @category.TitleP, updatedtime: @category.updatedtime }
    assert_redirected_to category_path(assigns(:category))
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete :destroy, id: @category
    end

    assert_redirected_to categories_path
  end
end
