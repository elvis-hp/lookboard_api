require 'test_helper'

class SuppliersControllerTest < ActionController::TestCase
  setup do
    @supplier = supplier(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplier)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier" do
    assert_difference('Supplier.count') do
      post :create, supplier: { Category: @supplier.Category, City: @supplier.City, Contact: @supplier.Contact, Country: @supplier.Country, Design: @supplier.Design, Email: @supplier.Email, Fax: @supplier.Fax, InternetExposure: @supplier.InternetExposure, InternetPresence: @supplier.InternetPresence, Inventory: @supplier.Inventory, Phone: @supplier.Phone, Price: @supplier.Price, SaleEvent_Avatar: @supplier.SaleEvent_Avatar, SaleEvent_Description: @supplier.SaleEvent_Description, SaleEvent_Image: @supplier.SaleEvent_Image, SaleEvent_Intro: @supplier.SaleEvent_Intro, SaleEvent_Name: @supplier.SaleEvent_Name, SaleEvent_QuoteText: @supplier.SaleEvent_QuoteText, SaleEvent_Quotename: @supplier.SaleEvent_Quotename, SaleEvent_Text: @supplier.SaleEvent_Text, SaleEvent_Thumb: @supplier.SaleEvent_Thumb, SaleEvent_Title: @supplier.SaleEvent_Title, SendGroup: @supplier.SendGroup, SendMethod: @supplier.SendMethod, SendShip: @supplier.SendShip, SendTemplate: @supplier.SendTemplate, State: @supplier.State, Street2: @supplier.Street2, Street: @supplier.Street, Suffix: @supplier.Suffix, SuffixInd: @supplier.SuffixInd, Supplier: @supplier.Supplier, SupplierID: @supplier.SupplierID, Supplier_Note: @supplier.Supplier_Note, Supplier_description: @supplier.Supplier_description, URL: @supplier.URL, Zip: @supplier.Zip, claimed: @supplier.claimed, for_level: @supplier.for_level, formataddress: @supplier.formataddress, isfeature: @supplier.isfeature, lat: @supplier.lat, long: @supplier.long, payment_method: @supplier.payment_method, pickup: @supplier.pickup, sell_type: @supplier.sell_type, shipping_lead_time: @supplier.shipping_lead_time, updatedtime: @supplier.updatedtime, updatenow: @supplier.updatenow, user_id: @supplier.user_id }
    end

    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should show supplier" do
    get :show, id: @supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier
    assert_response :success
  end

  test "should update supplier" do
    put :update, id: @supplier, supplier: { Category: @supplier.Category, City: @supplier.City, Contact: @supplier.Contact, Country: @supplier.Country, Design: @supplier.Design, Email: @supplier.Email, Fax: @supplier.Fax, InternetExposure: @supplier.InternetExposure, InternetPresence: @supplier.InternetPresence, Inventory: @supplier.Inventory, Phone: @supplier.Phone, Price: @supplier.Price, SaleEvent_Avatar: @supplier.SaleEvent_Avatar, SaleEvent_Description: @supplier.SaleEvent_Description, SaleEvent_Image: @supplier.SaleEvent_Image, SaleEvent_Intro: @supplier.SaleEvent_Intro, SaleEvent_Name: @supplier.SaleEvent_Name, SaleEvent_QuoteText: @supplier.SaleEvent_QuoteText, SaleEvent_Quotename: @supplier.SaleEvent_Quotename, SaleEvent_Text: @supplier.SaleEvent_Text, SaleEvent_Thumb: @supplier.SaleEvent_Thumb, SaleEvent_Title: @supplier.SaleEvent_Title, SendGroup: @supplier.SendGroup, SendMethod: @supplier.SendMethod, SendShip: @supplier.SendShip, SendTemplate: @supplier.SendTemplate, State: @supplier.State, Street2: @supplier.Street2, Street: @supplier.Street, Suffix: @supplier.Suffix, SuffixInd: @supplier.SuffixInd, Supplier: @supplier.Supplier, SupplierID: @supplier.SupplierID, Supplier_Note: @supplier.Supplier_Note, Supplier_description: @supplier.Supplier_description, URL: @supplier.URL, Zip: @supplier.Zip, claimed: @supplier.claimed, for_level: @supplier.for_level, formataddress: @supplier.formataddress, isfeature: @supplier.isfeature, lat: @supplier.lat, long: @supplier.long, payment_method: @supplier.payment_method, pickup: @supplier.pickup, sell_type: @supplier.sell_type, shipping_lead_time: @supplier.shipping_lead_time, updatedtime: @supplier.updatedtime, updatenow: @supplier.updatenow, user_id: @supplier.user_id }
    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should destroy supplier" do
    assert_difference('Supplier.count', -1) do
      delete :destroy, id: @supplier
    end

    assert_redirected_to suppliers_path
  end
end
