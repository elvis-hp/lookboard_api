require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { business_name: @user.business_name, earnbyfb: @user.earnbyfb, earnbyfollow: @user.earnbyfollow, earnbytw: @user.earnbytw, fb_access_key: @user.fb_access_key, fb_id: @user.fb_id, formataddress: @user.formataddress, from_source_ads: @user.from_source_ads, ip: @user.ip, isFeature: @user.isFeature, lat: @user.lat, linkedin_id: @user.linkedin_id, long: @user.long, oauth_token: @user.oauth_token, oauth_token_secret: @user.oauth_token_secret, send_mail_claim: @user.send_mail_claim, store_active: @user.store_active, store_avatar: @user.store_avatar, store_cover_image: @user.store_cover_image, store_description: @user.store_description, store_name: @user.store_name, tax_id: @user.tax_id, time_send_mail_claim: @user.time_send_mail_claim, tw_id: @user.tw_id, tw_name: @user.tw_name, user_about_you: @user.user_about_you, user_avatar: @user.user_avatar, user_birthday: @user.user_birthday, user_bucks: @user.user_bucks, user_city: @user.user_city, user_company: @user.user_company, user_company_address: @user.user_company_address, user_company_city: @user.user_company_city, user_company_country: @user.user_company_country, user_company_state: @user.user_company_state, user_company_zip: @user.user_company_zip, user_country: @user.user_country, user_cover_image: @user.user_cover_image, user_created_time: @user.user_created_time, user_email: @user.user_email, user_fax: @user.user_fax, user_free_buck: @user.user_free_buck, user_full_name: @user.user_full_name, user_have_dropship: @user.user_have_dropship, user_id: @user.user_id, user_is_a: @user.user_is_a, user_job_title: @user.user_job_title, user_looking_for: @user.user_looking_for, user_name: @user.user_name, user_note: @user.user_note, user_pass: @user.user_pass, user_phone: @user.user_phone, user_provide_inventory_updates: @user.user_provide_inventory_updates, user_rf_from: @user.user_rf_from, user_shipping_lead_time: @user.user_shipping_lead_time, user_state: @user.user_state, user_street: @user.user_street, user_target_price_range: @user.user_target_price_range, user_type: @user.user_type, user_url: @user.user_url, user_warehouse_address: @user.user_warehouse_address, user_warehouse_city: @user.user_warehouse_city, user_warehouse_country: @user.user_warehouse_country, user_warehouse_state: @user.user_warehouse_state, user_warehouse_zip: @user.user_warehouse_zip, user_zip: @user.user_zip }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { business_name: @user.business_name, earnbyfb: @user.earnbyfb, earnbyfollow: @user.earnbyfollow, earnbytw: @user.earnbytw, fb_access_key: @user.fb_access_key, fb_id: @user.fb_id, formataddress: @user.formataddress, from_source_ads: @user.from_source_ads, ip: @user.ip, isFeature: @user.isFeature, lat: @user.lat, linkedin_id: @user.linkedin_id, long: @user.long, oauth_token: @user.oauth_token, oauth_token_secret: @user.oauth_token_secret, send_mail_claim: @user.send_mail_claim, store_active: @user.store_active, store_avatar: @user.store_avatar, store_cover_image: @user.store_cover_image, store_description: @user.store_description, store_name: @user.store_name, tax_id: @user.tax_id, time_send_mail_claim: @user.time_send_mail_claim, tw_id: @user.tw_id, tw_name: @user.tw_name, user_about_you: @user.user_about_you, user_avatar: @user.user_avatar, user_birthday: @user.user_birthday, user_bucks: @user.user_bucks, user_city: @user.user_city, user_company: @user.user_company, user_company_address: @user.user_company_address, user_company_city: @user.user_company_city, user_company_country: @user.user_company_country, user_company_state: @user.user_company_state, user_company_zip: @user.user_company_zip, user_country: @user.user_country, user_cover_image: @user.user_cover_image, user_created_time: @user.user_created_time, user_email: @user.user_email, user_fax: @user.user_fax, user_free_buck: @user.user_free_buck, user_full_name: @user.user_full_name, user_have_dropship: @user.user_have_dropship, user_id: @user.user_id, user_is_a: @user.user_is_a, user_job_title: @user.user_job_title, user_looking_for: @user.user_looking_for, user_name: @user.user_name, user_note: @user.user_note, user_pass: @user.user_pass, user_phone: @user.user_phone, user_provide_inventory_updates: @user.user_provide_inventory_updates, user_rf_from: @user.user_rf_from, user_shipping_lead_time: @user.user_shipping_lead_time, user_state: @user.user_state, user_street: @user.user_street, user_target_price_range: @user.user_target_price_range, user_type: @user.user_type, user_url: @user.user_url, user_warehouse_address: @user.user_warehouse_address, user_warehouse_city: @user.user_warehouse_city, user_warehouse_country: @user.user_warehouse_country, user_warehouse_state: @user.user_warehouse_state, user_warehouse_zip: @user.user_warehouse_zip, user_zip: @user.user_zip }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
