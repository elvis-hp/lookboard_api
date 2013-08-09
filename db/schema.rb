# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "action", :force => true do |t|
    t.integer   "action"
    t.string    "actionname"
    t.string    "result"
    t.timestamp "datetime"
  end

  create_table "address", :primary_key => "address_id", :force => true do |t|
    t.string    "address_yourname"
    t.string    "address_email"
    t.string    "address_street1"
    t.string    "address_street2"
    t.string    "address_phone"
    t.string    "address_city"
    t.string    "address_state",        :limit => 100
    t.string    "address_zipcode",      :limit => 100
    t.string    "address_country",      :limit => 100
    t.timestamp "address_created_time",                :null => false
  end

  create_table "affiliate", :primary_key => "affiliate_id", :force => true do |t|
    t.string  "affiliate_name"
    t.string  "affiliate_phone",           :limit => 50
    t.string  "affiliate_mail"
    t.string  "affiliate_site"
    t.string  "affiliate_key_contact"
    t.integer "user_id"
    t.string  "affiliate_street"
    t.string  "affiliate_city"
    t.string  "affiliate_country"
    t.string  "affiliate_state"
    t.string  "affiliate_zip"
    t.float   "affiliate_commission",                    :default => 0.0
    t.float   "affiliate_commission_rate",               :default => 5.0
    t.boolean "active",                                  :default => true
  end

  create_table "business_claim", :force => true do |t|
    t.integer   "claim_user_id",         :limit => 8
    t.string    "claim_fullname",        :limit => 100, :default => "", :null => false
    t.string    "claim_job_title",       :limit => 300, :default => "", :null => false
    t.string    "claim_company_name",    :limit => 100, :default => "", :null => false
    t.string    "claim_email_address",   :limit => 100, :default => "", :null => false
    t.string    "claim_mailing_address", :limit => 100, :default => "", :null => false
    t.string    "claim_company_website", :limit => 200, :default => "", :null => false
    t.integer   "store_user_id",         :limit => 8
    t.timestamp "updatedtime",                                          :null => false
    t.integer   "claimed",               :limit => 1,   :default => 0,  :null => false
  end

  create_table "category", :force => true do |t|
    t.integer   "CategoryID" 
    t.string    "CategoryName"
    t.integer   "Ranking"
    t.integer   "ParentID"
    t.binary    "HasChildren",      :limit => 1
    t.integer   "Status",           :limit => 1
    t.string    "Description",      :limit => 500
    t.integer   "LanguageID",       :limit => 1
    t.string    "Icon"
    t.integer   "HasDeal",                          :default => 0
    t.string    "Seourl",           :limit => 512
    t.string    "Title"
    t.text      "DescriptionTag"
    t.string    "Manufacturer"
    t.string    "MetaKeywords"
    t.string    "MetaPageTopic"
    t.string    "MetaGeoRegion"
    t.string    "MetaGeoPlaceName"
    t.string    "DescriptionMain",  :limit => 1000
    t.string    "TitleP"
    t.string    "DescriptionMainP", :limit => 500
    t.integer   "FromUser",                         :default => 0
    t.timestamp "updatedtime",                                     :null => false
  end

  add_index "category", ["LanguageID"], :name => "fk_LanguageID"
  add_index "category", ["ParentID"], :name => "NewIndex1"

  create_table "category_tags", :id => false, :force => true do |t|
    t.integer  "item_id",     :null => false
    t.integer  "category_id", :null => false
    t.datetime "createdtime", :null => false
  end

  add_index "category_tags", ["item_id", "category_id"], :name => "item_id", :unique => true
  add_index "category_tags", ["item_id", "category_id"], :name => "item_id_2"

  create_table "countries", :primary_key => "CountryID", :force => true do |t|
    t.string "CountryName", :null => false
    t.string "CountryCode", :null => false
  end

  create_table "coupon", :primary_key => "Coupon_ID", :force => true do |t|
    t.string   "Coupon_Text",         :limit => 20
    t.string   "Coupon_Title"
    t.float    "Coupon_Value",                      :default => 0.0
    t.datetime "Coupon_Start_Date"
    t.datetime "Coupon_End_Date",                                        :null => false
    t.string   "Coupon_Status",       :limit => 10, :default => "Valid"
    t.string   "Coupon_for_item_id",                :default => " ",     :null => false
    t.float    "Coupon_price",                      :default => 0.0
    t.integer  "Coupon_Never_End",                  :default => 0,       :null => false
    t.integer  "Coupon_Partner_Deal", :limit => 8
    t.integer  "Coupon_Type_Off",                   :default => 0
  end

  create_table "coupon_filter", :force => true do |t|
    t.string    "source_file", :limit => 100
    t.string    "input_file",  :limit => 100
    t.string    "output_file", :limit => 100
    t.timestamp "time",                       :null => false
  end

  create_table "coupon_filter_old", :force => true do |t|
    t.string    "source_file", :limit => 100
    t.string    "input_file",  :limit => 100
    t.string    "output_file", :limit => 100
    t.timestamp "time",                       :null => false
  end

  create_table "coupon_old", :primary_key => "Coupon_ID", :force => true do |t|
    t.string   "Coupon_Text",         :limit => 20
    t.string   "Coupon_Title"
    t.float    "Coupon_Value",                      :default => 0.0
    t.datetime "Coupon_Start_Date"
    t.datetime "Coupon_End_Date",                                        :null => false
    t.string   "Coupon_Status",       :limit => 10, :default => "Valid"
    t.string   "Coupon_for_item_id",                :default => " ",     :null => false
    t.float    "Coupon_price",                      :default => 0.0
    t.integer  "Coupon_Never_End",                  :default => 0,       :null => false
    t.integer  "Coupon_Partner_Deal", :limit => 8
    t.integer  "Coupon_Type_Off",                   :default => 0
  end

  create_table "crawlfab", :primary_key => "crawl_id", :force => true do |t|
    t.integer   "crawl_fabid"
    t.string    "crawl_link"
    t.timestamp "crawl_time",                                  :null => false
    t.integer   "crawl_status",    :limit => 1, :default => 0
    t.string    "crawl_note"
    t.integer   "idsupplier"
    t.integer   "iduser"
    t.integer   "idboard"
    t.integer   "idproduct"
    t.integer   "pagenumber"
    t.integer   "crawlingpage"
    t.string    "note2"
    t.integer   "product_in_page"
  end

  create_table "deal_rule", :force => true do |t|
    t.integer "deal_id",  :limit => 8
    t.integer "rule_id"
    t.integer "quantity",               :default => 1,   :null => false
    t.float   "price",                  :default => 0.0, :null => false
    t.string  "state",    :limit => 10, :default => "",  :null => false
  end

  add_index "deal_rule", ["deal_id"], :name => "deal_rule_fk"
  add_index "deal_rule", ["rule_id"], :name => "rule_deal_fk"

  create_table "designers", :primary_key => "designer_id", :force => true do |t|
    t.string  "SeoUrl"
    t.string  "Keywords"
    t.string  "MetaDescription"
    t.string  "TitleSeo"
    t.string  "designer_name"
    t.integer "designer_vender",  :limit => 8
    t.text    "designer_text"
    t.text    "designer_text_qa"
    t.integer "designer_status",               :default => 1
    t.string  "designer_avatar"
    t.string  "designer_image1"
    t.string  "designer_image2"
    t.string  "designer_image3"
    t.string  "designer_image4"
    t.integer "look_id",          :limit => 8, :default => 0
  end

  add_index "designers", ["designer_vender"], :name => "FK_designers"

  create_table "dropship", :force => true do |t|
    t.string    "po_number",           :limit => 100, :null => false
    t.integer   "shipping_address_id",                :null => false
    t.string    "shipping_no",         :limit => 100
    t.timestamp "created_time",                       :null => false
    t.string    "partner",             :limit => 50
  end

  create_table "dropship_item", :primary_key => "item_id", :force => true do |t|
    t.integer "item_order_id",                  :null => false
    t.integer "item_product_id",                :null => false
    t.integer "item_quantity",                  :null => false
    t.string  "item_option",     :limit => 100
  end

  create_table "email_mass", :primary_key => "email", :force => true do |t|
    t.string  "full_name", :limit => 50
    t.string  "company",   :limit => 100
    t.integer "status",                   :default => 0, :null => false
  end

  create_table "images", :force => true do |t|
    t.integer   "productNo",    :limit => 8
    t.string    "images"
    t.timestamp "created_time",              :null => false
  end

  add_index "images", ["productNo"], :name => "ProductNo"

  create_table "invoice", :force => true do |t|
    t.timestamp "created_time",                                    :null => false
    t.timestamp "due_time",                                        :null => false
    t.integer   "partner_id",                                      :null => false
    t.string    "exported_order", :limit => 500
    t.boolean   "status",                        :default => true, :null => false
  end

  create_table "invoice_item", :force => true do |t|
    t.integer "invoice_id", :null => false
    t.integer "item_id",    :null => false
    t.float   "rate",       :null => false
    t.integer "quantity",   :null => false
  end

  create_table "ip", :primary_key => "ip", :force => true do |t|
    t.text "content", :null => false
  end

  create_table "lasteancode", :id => false, :force => true do |t|
    t.string "EANCode", :limit => 50
  end

  create_table "look_item", :force => true do |t|
    t.integer "lock_id", :limit => 8
    t.integer "item_id", :limit => 8
  end

  add_index "look_item", ["item_id"], :name => "i_l"
  add_index "look_item", ["lock_id"], :name => "l_i"

  create_table "looks", :primary_key => "look_id", :force => true do |t|
    t.string    "look_name",         :limit => 300, :default => "",   :null => false
    t.string    "look_note",         :limit => 300, :default => "",   :null => false
    t.integer   "look_slide",                       :default => 0,    :null => false
    t.string    "look_image",        :limit => 300, :default => "",   :null => false
    t.string    "SeoTitle",          :limit => 600, :default => "",   :null => false
    t.text      "SeoDescription",                                     :null => false
    t.string    "SeoUrl",            :limit => 600, :default => "",   :null => false
    t.text      "SeoDescriptionTag",                                  :null => false
    t.string    "SeoKeyword",        :limit => 600, :default => "",   :null => false
    t.string    "SeoPageTopic",      :limit => 600, :default => "",   :null => false
    t.string    "SeoGeoRegion",      :limit => 600, :default => "",   :null => false
    t.string    "SeoGeoPlaceName",   :limit => 600, :default => "",   :null => false
    t.timestamp "updatedtime",                                        :null => false
    t.string    "color_filter",      :limit => 300, :default => "",   :null => false
    t.boolean   "look_status",                      :default => true, :null => false
  end

  create_table "mapping", :primary_key => "mapping_id", :force => true do |t|
    t.integer   "mapping_user_id"
    t.string    "mapping_name",          :limit => 50
    t.text      "mapping_value"
    t.timestamp "mapping_modified_time",               :null => false
  end

  create_table "message_reply", :primary_key => "cr_id", :force => true do |t|
    t.text      "reply"
    t.integer   "boardid",     :limit => 8
    t.integer   "item_id",     :limit => 8
    t.string    "filename",    :limit => 600, :default => "",    :null => false
    t.integer   "user_id_fk",  :limit => 8
    t.integer   "user_id_fk2", :limit => 8
    t.string    "ip",          :limit => 30
    t.timestamp "time",                                          :null => false
    t.integer   "status"
    t.integer   "c_id_fk",     :limit => 8
    t.boolean   "sent_email",                 :default => false
  end

  add_index "message_reply", ["c_id_fk"], :name => "FK_message_reply"

  create_table "messages", :primary_key => "c_id", :force => true do |t|
    t.integer   "user_one", :limit => 8
    t.integer   "user_two", :limit => 8
    t.string    "ip",       :limit => 30
    t.timestamp "time",                   :null => false
    t.integer   "status"
  end

  create_table "news", :id => false, :force => true do |t|
    t.integer  "news_id",          :limit => 8
    t.integer  "news_category_id", :limit => 8
    t.string   "news_title"
    t.text     "news_sub"
    t.text     "news_content",     :limit => 2147483647
    t.datetime "news_createdtime"
    t.integer  "news_create_by",   :limit => 8
    t.integer  "news_status"
    t.integer  "news_view_count"
    t.integer  "news_view_like"
  end

  create_table "news_cat", :primary_key => "news_cat_id", :force => true do |t|
    t.integer "news_cat_parent_id", :limit => 8,   :default => 0
    t.string  "news_cat_title",     :limit => 100
    t.string  "news_cat_icon"
    t.integer "news_cat_order",     :limit => 8,   :default => 1
    t.integer "news_cat_active",    :limit => 8,   :default => 1
  end

  create_table "order", :primary_key => "order_id", :force => true do |t|
    t.integer   "order_user_id",               :limit => 8
    t.datetime  "order_created_time"
    t.float     "order_total",                               :default => 0.0
    t.integer   "order_billing_address",       :limit => 8
    t.integer   "order_shipping_address",      :limit => 8
    t.integer   "order_payment_type"
    t.integer   "order_status"
    t.timestamp "order_updated_time",                                         :null => false
    t.string    "order_note"
    t.float     "order_tax",                                                  :null => false
    t.float     "order_ship",                                                 :null => false
    t.string    "order_ship_carrier",          :limit => 50
    t.date      "order_shipping_date",                                        :null => false
    t.string    "order_shipping_no",           :limit => 50,                  :null => false
    t.string    "order_transaction_id",        :limit => 50,                  :null => false
    t.string    "order_cedit_no",              :limit => 50,                  :null => false
    t.string    "order_sec_no",                :limit => 50,                  :null => false
    t.string    "order_cedit_date",            :limit => 50,                  :null => false
    t.string    "order_shipping_method"
    t.string    "order_shipping_freight_name"
    t.integer   "coupon_id",                   :limit => 8
    t.float     "order_buck_used",                           :default => 0.0
    t.integer   "fbshared",                                  :default => 0,   :null => false
    t.integer   "twshared",                                  :default => 0,   :null => false
    t.integer   "affiliate_id"
    t.integer   "invoice_id"
    t.integer   "order_type",                                :default => 1
    t.string    "dropship_number",             :limit => 50
  end

  add_index "order", ["order_billing_address"], :name => "FK_adress_billing"
  add_index "order", ["order_shipping_address"], :name => "FK_address_shipping"

  create_table "order_items", :primary_key => "item_id", :force => true do |t|
    t.integer   "item_order_id",     :limit => 8
    t.integer   "item_product_id",   :limit => 8
    t.string    "item_name",         :limit => 512
    t.string    "item_option",       :limit => 512
    t.float     "item_price"
    t.integer   "item_quantity",     :limit => 8
    t.timestamp "item_created_time",                :null => false
    t.string    "item_note"
    t.integer   "po_order_id"
    t.text      "item_history"
  end

  add_index "order_items", ["item_order_id"], :name => "FK_order_items"
  add_index "order_items", ["item_product_id"], :name => "FK_product_id"

  create_table "partner_deals", :primary_key => "partner_deal_id", :force => true do |t|
    t.integer   "partner_id",            :limit => 8
    t.string    "partner_deal_term"
    t.datetime  "partner_deal_start"
    t.datetime  "partner_deal_end"
    t.string    "partner_deal_note"
    t.timestamp "created_time",                       :null => false
    t.integer   "partner_deal_term_due"
  end

  create_table "partner_deals_old", :primary_key => "partner_deal_id", :force => true do |t|
    t.integer   "partner_id",            :limit => 8
    t.string    "partner_deal_term"
    t.datetime  "partner_deal_start"
    t.datetime  "partner_deal_end"
    t.string    "partner_deal_note"
    t.timestamp "created_time",                       :null => false
    t.integer   "partner_deal_term_due"
  end

  create_table "partners", :primary_key => "partner_id", :force => true do |t|
    t.string    "partner_name"
    t.string    "partner_contact"
    t.string    "partner_email"
    t.string    "partner_website"
    t.string    "partner_payment_term"
    t.string    "partner_phone",        :limit => 20
    t.string    "partner_address",      :limit => 500
    t.string    "Price"
    t.string    "Design"
    t.string    "Inventory"
    t.string    "Type"
    t.text      "Category"
    t.timestamp "created_time",                                           :null => false
    t.string    "partner_type",         :limit => 20
    t.text      "partner_note"
    t.string    "user_follow"
    t.timestamp "partner_updatetime"
    t.string    "parner_status",        :limit => 20
    t.string    "for_level",            :limit => 10,  :default => "Vip"
    t.integer   "for_user_id",          :limit => 8
  end

  create_table "partners_old", :primary_key => "partner_id", :force => true do |t|
    t.string    "partner_name"
    t.string    "partner_email"
    t.string    "partner_website"
    t.string    "partner_payment_term"
    t.string    "partner_phone",        :limit => 20
    t.string    "partner_address",      :limit => 500
    t.timestamp "created_time",                        :null => false
  end

  create_table "photo_share", :primary_key => "photoid", :force => true do |t|
    t.text      "photo_url"
    t.integer   "photo_user_id",     :limit => 8
    t.string    "photo_title"
    t.float     "photo_price",                      :default => 0.0, :null => false
    t.string    "photo_description", :limit => 600
    t.string    "photo_city"
    t.string    "photo_place"
    t.string    "photo_tag",         :limit => 512
    t.timestamp "photo_createdtime"
    t.string    "photo_note"
    t.integer   "photo_edit",                       :default => 0,   :null => false
    t.string    "photo_make_it_url", :limit => 300, :default => "",  :null => false
  end

  add_index "photo_share", ["photo_user_id"], :name => "FK_photo_share"

  create_table "pmsendmail_email", :force => true do |t|
    t.string    "email"
    t.timestamp "timeinsert"
    t.timestamp "timesend"
    t.string    "fileupload"
    t.integer   "status",     :limit => 1,  :default => 0
    t.string    "username",   :limit => 50
    t.string    "vendername", :limit => 50
  end

  create_table "pmsendmail_template", :primary_key => "tem_id", :force => true do |t|
    t.string    "tem_email_gui"
    t.string    "tem_ten_gui"
    t.text      "tem_tieude_gui"
    t.text      "tem_noidung_gui", :limit => 2147483647
    t.datetime  "tem_timecreate"
    t.timestamp "tem_timeupdate"
    t.string    "tem_nguoitao"
    t.string    "tem_tenfile"
  end

  create_table "po_orders", :force => true do |t|
    t.string   "tracking_no",  :limit => 30
    t.datetime "shipped_date"
    t.string   "ship_carrier", :limit => 30
    t.integer  "status",                     :null => false
    t.text     "note"
  end

  create_table "privacy_setting", :primary_key => "user_id", :force => true do |t|
    t.boolean "message_new_friendship",                  :default => true, :null => false
    t.boolean "message_new_message",                     :default => true, :null => false
    t.boolean "message_new_profilecomment",              :default => true, :null => false
    t.boolean "appear_in_search",                        :default => true, :null => false
    t.boolean "show_online_status",                      :default => true, :null => false
    t.boolean "log_profile_visits",                      :default => true, :null => false
    t.string  "ignore_users"
    t.integer "public_profile_fields",      :limit => 8
  end

  create_table "product_ean", :primary_key => "ean_id", :force => true do |t|
    t.integer "item_id"
    t.string  "option_value"
    t.string  "ean_code",     :limit => 15
  end

  create_table "product_living", :force => true do |t|
    t.string    "Product"
    t.string    "SKU"
    t.string    "Oem"
    t.string    "Supplier"
    t.string    "ProductType"
    t.float     "Price"
    t.float     "PriceRetail"
    t.float     "PriceWithoutShipping"
    t.float     "Cost"
    t.string    "Map",                                            :default => "0"
    t.string    "Taxable"
    t.string    "Surcharge"
    t.string    "SurchargeTitle"
    t.string    "Shipping"
    t.float     "Shipping2"
    t.string    "ShippingExemptInd"
    t.string    "SaleExclude"
    t.float     "Quantity",                                       :default => -1.0,  :null => false
    t.integer   "Unit",                                           :default => 0
    t.string    "ItemPerPackage",                                 :default => "1"
    t.string    "Threshold"
    t.string    "Weight"
    t.string    "Length"
    t.string    "Height"
    t.string    "Width"
    t.string    "ItemLength",               :limit => 50
    t.string    "ItemHeight",               :limit => 50
    t.string    "ItemWidth",                :limit => 50
    t.string    "ItemWeight",               :limit => 50
    t.string    "ContainerCode"
    t.text      "Brief"
    t.text      "Description",              :limit => 2147483647
    t.string    "Subscription"
    t.string    "Template"
    t.string    "ListingTemplate"
    t.text      "HighLight1"
    t.text      "HighLight2"
    t.text      "HighLight3"
    t.text      "HighLight4"
    t.text      "HighLight5"
    t.text      "HighLight6"
    t.text      "HighLight7"
    t.text      "HighLight8"
    t.string    "Active"
    t.string    "AuthReq"
    t.string    "Isbn"
    t.string    "Brand"
    t.string    "Mpn"
    t.string    "Upc"
    t.string    "Ean"
    t.string    "eBayProductId"
    t.string    "ProductReferenceId"
    t.string    "Condition"
    t.string    "Media"
    t.string    "NaturalSearchKeywords"
    t.string    "NaturalSearchDescription"
    t.string    "Category"
    t.integer   "Category2"
    t.integer   "Category3"
    t.string    "Keywords"
    t.string    "GoogleCategory"
    t.string    "GoogleAgeGroup"
    t.string    "GoogleGender"
    t.string    "Attribute1SharedName"
    t.string    "Attribute1Label",          :limit => 512
    t.text      "Attribute1Values"
    t.string    "Attribute1DisplayType",    :limit => 555
    t.string    "Attribute2SharedName",     :limit => 512
    t.string    "Attribute2Label",          :limit => 512
    t.text      "Attribute2Values"
    t.string    "Attribute2DisplayType",    :limit => 512
    t.string    "Attribute3SharedName",     :limit => 512
    t.string    "Attribute3Label",          :limit => 512
    t.text      "Attribute3Values"
    t.string    "Attribute3DisplayType",    :limit => 512
    t.string    "Attribute4SharedName",     :limit => 512
    t.string    "Attribute4Label",          :limit => 512
    t.text      "Attribute4Values"
    t.string    "Attribute4DisplayType",    :limit => 512
    t.string    "Attribute5SharedName",     :limit => 512
    t.string    "Attribute5Label",          :limit => 512
    t.text      "Attribute5Values"
    t.string    "Attribute5DisplayType",    :limit => 512
    t.string    "Attribute6SharedName",     :limit => 512
    t.string    "Attribute6Label",          :limit => 512
    t.text      "Attribute6Values"
    t.string    "Attribute6DisplayType",    :limit => 512
    t.string    "Attribute7SharedName",     :limit => 512
    t.string    "Attribute7Label",          :limit => 512
    t.text      "Attribute7Values"
    t.string    "Attribute7DisplayType",    :limit => 512
    t.string    "Attribute8SharedName",     :limit => 512
    t.string    "Attribute8Label",          :limit => 512
    t.text      "Attribute8Values"
    t.string    "Attribute8DisplayType",    :limit => 512
    t.string    "Attribute9SharedName",     :limit => 512
    t.string    "Attribute9Label",          :limit => 512
    t.string    "Attribute9Values",         :limit => 512
    t.string    "Attribute9DisplayType",    :limit => 512
    t.string    "Attribute10SharedName",    :limit => 512
    t.string    "Attribute10Label",         :limit => 512
    t.string    "Attribute10Values",        :limit => 512
    t.string    "Attribute10DisplayType",   :limit => 512
    t.string    "MediaItem1"
    t.string    "MediaItem2"
    t.string    "MediaItem3"
    t.string    "MediaItem4"
    t.string    "MediaItem5"
    t.string    "MediaItem6"
    t.string    "MediaItem7"
    t.string    "MediaItem8"
    t.string    "MediaItem9"
    t.string    "MediaItem10"
    t.string    "MediaItem11"
    t.string    "MediaItem12"
    t.string    "MediaItem13"
    t.string    "MediaItem14"
    t.string    "MediaItem15"
    t.string    "MediaItem16"
    t.integer   "thumb_number",             :limit => 1,          :default => 1,     :null => false
    t.integer   "post_status",                                    :default => 0
    t.datetime  "createdtime"
    t.timestamp "updatedtime",                                                       :null => false
    t.timestamp "puplictime"
    t.integer   "drafts",                   :limit => 1,          :default => 0,     :null => false
    t.datetime  "starttime"
    t.datetime  "endtime"
    t.float     "ContainerLoad"
    t.string    "EstimatedArrival"
    t.text      "DaysReturnPolicy"
    t.string    "CompareSite1"
    t.float     "CompareValue1"
    t.string    "CompareLink1",             :limit => 1024
    t.string    "CompareSite2"
    t.float     "CompareValue2"
    t.string    "CompareLink2",             :limit => 1024
    t.string    "CompareSite3"
    t.float     "CompareValue3"
    t.string    "CompareLink3",             :limit => 1024
    t.string    "ShipFrom"
    t.string    "ShipWithin"
    t.string    "OptionName1",              :limit => 100
    t.text      "OptionValues1"
    t.string    "OptionName2",              :limit => 100
    t.text      "OptionValues2"
    t.string    "OptionName3",              :limit => 100
    t.text      "OptionValues3"
    t.integer   "ViewCatalog",                                    :default => 1
    t.integer   "InSaleEvent",              :limit => 8
    t.string    "Note",                     :limit => 500
    t.integer   "Customsize",               :limit => 1,          :default => 0
    t.text      "OptionImages"
    t.integer   "flashsale",                                      :default => 0
    t.boolean   "is_iphone5_case",                                :default => false, :null => false
    t.string    "MetaDescription",          :limit => 512
    t.string    "SeoUrl"
    t.string    "TitleSeo"
    t.float     "shipexpress",                                    :default => 0.0
    t.integer   "isDeal",                                         :default => 0
    t.string    "state",                    :limit => 30,         :default => "",    :null => false
    t.string    "EstimatedArrival2",                              :default => "0"
    t.string    "SpecificationsTitle"
    t.string    "ShippingTitle"
    t.integer   "IsFreight",                :limit => 1
    t.float     "Lenght1"
    t.float     "Lenght2"
    t.float     "Lenght3"
    t.float     "Lenght4"
    t.float     "Lenght5"
    t.float     "Height1"
    t.float     "Height2"
    t.float     "Height3"
    t.float     "Height4"
    t.float     "Height5"
    t.float     "Width1"
    t.float     "Width2"
    t.float     "Width3"
    t.float     "Width4"
    t.float     "Width5"
    t.float     "Weight1"
    t.float     "Weight2"
    t.float     "Weight3"
    t.float     "Weight4"
    t.float     "Weight5"
    t.integer   "sort",                     :limit => 8
    t.integer   "visible",                                        :default => 0
    t.string    "Hightline",                :limit => 600
    t.string    "warranty"
    t.string    "tag_color",                :limit => 600,        :default => "",    :null => false
    t.float     "ShipingFedex",                                   :default => 0.0
    t.string    "OptionCost",               :limit => 512
    t.float     "DropShip",                                       :default => 0.0
    t.integer   "export_dropship",          :limit => 1,          :default => 0,     :null => false
    t.string    "InternetDistribution",     :limit => 3,          :default => "Yes"
    t.float     "DropShipFree"
    t.string    "FileUpload"
    t.integer   "submitted_product",        :limit => 1,          :default => 0,     :null => false
    t.integer   "export_beba",                                    :default => 0,     :null => false
    t.integer   "export_banbeba",           :limit => 2,          :default => 0,     :null => false
    t.string    "CategorySears"
    t.integer   "request_user",             :limit => 8
  end

  create_table "product_option_type", :primary_key => "option_type_id", :force => true do |t|
    t.string "option_type_name", :limit => 50
  end

  create_table "product_options", :primary_key => "option_id", :force => true do |t|
    t.integer "product_id",                   :null => false
    t.integer "option_type_id",               :null => false
    t.string  "option_name",    :limit => 50, :null => false
    t.float   "option_length"
    t.float   "option_width"
    t.float   "option_height"
    t.float   "option_weight"
    t.integer "quantity"
    t.float   "cost"
    t.float   "price"
    t.string  "mpn",            :limit => 20
  end

  create_table "queue_send_mail", :id => false, :force => true do |t|
    t.integer   "user_id_send",    :limit => 8, :null => false
    t.integer   "user_id_receive", :limit => 8, :null => false
    t.timestamp "createdtime",                  :null => false
  end

  create_table "request_lookboard", :force => true do |t|
    t.text      "request_text"
    t.string    "vender_name",  :limit => 300, :default => ""
    t.string    "vender_email", :limit => 100, :default => ""
    t.integer   "vender_id",    :limit => 8
    t.integer   "buyer_id",     :limit => 8
    t.timestamp "updatedtime"
  end

  create_table "rules", :primary_key => "rule_id", :force => true do |t|
    t.text     "rule_short_discription",                                :null => false
    t.string   "rule_name",              :limit => 300, :default => "", :null => false
    t.text     "rule_long_description",                                 :null => false
    t.datetime "rule_starttime"
    t.datetime "rule_endtime"
    t.string   "text_button",            :limit => 60,                  :null => false
    t.text     "rule_note",                                             :null => false
  end

  create_table "sale_event", :primary_key => "SaleEvent_ID", :force => true do |t|
    t.integer  "SaleEvent_Supplier_Quote",                                   :null => false
    t.string   "SaleEvent_Name",           :limit => 250,                    :null => false
    t.string   "SaleEvent_Intro",          :limit => 250,                    :null => false
    t.string   "SaleEvent_Description",    :limit => 500,                    :null => false
    t.datetime "SaleEvent_Starttime",                                        :null => false
    t.datetime "SaleEvent_Endtime",                                          :null => false
    t.string   "SaleEvent_Active",         :limit => 5,   :default => "Yes", :null => false
    t.string   "SaleEvent_Thumb",          :limit => 500,                    :null => false
    t.string   "SaleEvent_NoTime",         :limit => 5,   :default => "No"
    t.string   "SaleEvent_Image"
    t.float    "SaleEvent_IsFeature"
    t.string   "SaleEvent_Quotename",      :limit => 50
    t.string   "SaleEvent_Title",          :limit => 50
    t.string   "SaleEvent_Avatar"
    t.string   "SaleEvent_Text",           :limit => 500
    t.string   "Title",                    :limit => 512
    t.string   "Seourl",                   :limit => 512
    t.string   "DescriptionTag",           :limit => 512
    t.string   "Manufacturer",             :limit => 512
    t.string   "MetaKeywords",             :limit => 512
    t.string   "MetaPageTopic",            :limit => 512
    t.string   "MetaGeoRegion",            :limit => 512
    t.string   "MetaGeoPlaceName",         :limit => 512
  end

  create_table "states", :primary_key => "StateID", :force => true do |t|
    t.integer "CountryID",                                  :null => false
    t.string  "StateName"
    t.string  "StateCode"
    t.integer "status_deal", :limit => 2,   :default => 0,  :null => false
    t.string  "state_url",   :limit => 100, :default => "", :null => false
  end

  create_table "supplier", :force => true do |t|
    t.integer   "SupplierID"
    t.string    "SaleEvent_Name"
    t.string    "SaleEvent_Intro"
    t.string    "Supplier_description",  :limit => 512
    t.string    "Supplier"
    t.string    "SaleEvent_Description", :limit => 600, :default => "",       :null => false
    t.string    "Contact"
    t.string    "Street"
    t.string    "Street2"
    t.string    "City"
    t.string    "State"
    t.string    "Zip"
    t.string    "Country"
    t.string    "Phone"
    t.string    "Fax"
    t.string    "Email"
    t.string    "URL"
    t.string    "SendMethod"
    t.string    "SendGroup"
    t.string    "SendTemplate",                         :default => "15"
    t.string    "SendShip"
    t.string    "Suffix"
    t.string    "SuffixInd"
    t.float     "long"
    t.float     "lat"
    t.string    "formataddress",         :limit => 500
    t.integer   "pickup",                               :default => 0
    t.string    "SaleEvent_Title"
    t.string    "SaleEvent_Text",        :limit => 512
    t.string    "SaleEvent_QuoteText",   :limit => 512
    t.string    "SaleEvent_Quotename"
    t.string    "SaleEvent_Avatar"
    t.string    "SaleEvent_Image"
    t.string    "SaleEvent_Thumb"
    t.integer   "updatenow",             :limit => 1
    t.timestamp "updatedtime",                                                :null => false
    t.integer   "isfeature",                            :default => 0
    t.string    "payment_method",        :limit => 600, :default => "",       :null => false
    t.integer   "user_id",               :limit => 8,                         :null => false
    t.string    "Price"
    t.string    "Design"
    t.string    "Inventory"
    t.text      "Category"
    t.float     "shipping_lead_time"
    t.string    "sell_type"
    t.integer   "claimed",               :limit => 1,   :default => 1,        :null => false
    t.string    "Supplier_Note"
    t.string    "InternetExposure"
    t.string    "InternetPresence",      :limit => 3,   :default => "Yes"
    t.string    "for_level",             :limit => 10,  :default => "Normal"
  end

  create_table "tag", :primary_key => "tagid", :force => true do |t|
    t.string    "tagname"
    t.integer   "tagtype",         :limit => 8
    t.timestamp "tag_createdtime",              :null => false
    t.string    "tag_note"
  end

  create_table "template_user_partner", :force => true do |t|
    t.string   "subject",      :limit => 600, :default => "",         :null => false
    t.text     "content",                                             :null => false
    t.datetime "date_to_send",                                        :null => false
    t.string   "email_list",                  :default => "test.csv"
    t.integer  "active",       :limit => 1,   :default => 1
    t.string   "sendermail"
    t.string   "sendername"
  end

  create_table "updatecate_board", :id => false, :force => true do |t|
    t.integer "ProductNo", :limit => 8, :default => 0, :null => false
    t.integer "wishlist",  :limit => 8, :default => 0, :null => false
    t.string  "mycate"
    t.integer "category"
  end

  create_table "user_click_link", :primary_key => "click_link_id", :force => true do |t|
    t.integer   "click_link_user_id",       :limit => 8,                   :null => false
    t.string    "click_link_user_fullname", :limit => 300, :default => "", :null => false
    t.integer   "click_link_cat_id",        :limit => 8,                   :null => false
    t.string    "click_link_catname",                      :default => "", :null => false
    t.integer   "click_link_item_id",       :limit => 8,                   :null => false
    t.string    "click_link_item_url",      :limit => 300,                 :null => false
    t.timestamp "click_link_date",                                         :null => false
    t.string    "click_link_address_ip",    :limit => 20,  :default => "", :null => false
    t.string    "click_link_from",          :limit => 100, :default => "", :null => false
  end

  create_table "user_following", :force => true do |t|
    t.integer   "user_id",          :limit => 8
    t.integer   "user_followed_id", :limit => 8
    t.integer   "follow_from",      :limit => 1, :default => 0, :null => false
    t.timestamp "created_time",                                 :null => false
  end

  create_table "user_follows", :primary_key => "follow_id", :force => true do |t|
    t.integer   "follow_user_id",     :limit => 8
    t.integer   "follow_vender_id",   :limit => 8
    t.timestamp "createdtime",                     :null => false
    t.integer   "follow_category_id"
  end

  create_table "user_mkt", :primary_key => "email", :force => true do |t|
    t.integer   "subscribe",        :limit => 1,   :default => 1,  :null => false
    t.string    "name",             :limit => 100, :default => "", :null => false
    t.string    "company",          :limit => 300, :default => "", :null => false
    t.string    "state"
    t.timestamp "time"
    t.string    "website",          :limit => 100
    t.string    "note",             :limit => 100
    t.integer   "send_mail_status",                :default => 0
    t.integer   "send_mail_count",                 :default => 1
  end

  add_index "user_mkt", ["email"], :name => "email", :unique => true

  create_table "user_mkt_track", :primary_key => "track_id", :force => true do |t|
    t.string   "track_email", :limit => 100
    t.string   "track_event", :limit => 100
    t.integer  "track_type",                 :default => 1
    t.string   "track_note"
    t.datetime "createdtime"
  end

  add_index "user_mkt_track", ["track_email"], :name => "TRACK_EMAIL"

  create_table "user_partner", :primary_key => "email", :force => true do |t|
    t.string "name", :limit => 100, :default => "", :null => false
  end

  create_table "user_post_request", :force => true do |t|
    t.text      "description",              :null => false
    t.date      "deadline",                 :null => false
    t.integer   "user_id",     :limit => 8, :null => false
    t.timestamp "timestamp",                :null => false
  end

  create_table "user_tips", :primary_key => "tip_id", :force => true do |t|
    t.string    "tips_text",        :limit => 500
    t.integer   "tips_user_id",     :limit => 8
    t.string    "tips_user_name"
    t.integer   "tips_items_id",    :limit => 8
    t.string    "tips_items_title", :limit => 500
    t.timestamp "tips_create_at",                                 :null => false
    t.integer   "tips_action",      :limit => 8,   :default => 1
    t.string    "tips_note",        :limit => 500
    t.text      "tips_items_url"
    t.string    "tips_fb_id",       :limit => 50
    t.integer   "tips_photo_id",    :limit => 8
    t.float     "tips_item_price",                                :null => false
  end

  add_index "user_tips", ["tips_items_id"], :name => "FK_items_id"
  add_index "user_tips", ["tips_user_id"], :name => "FK_user_tips"

  create_table "user_tracks", :force => true do |t|
    t.integer   "user_id",     :limit => 8
    t.string    "type",        :limit => 50
    t.integer   "item_id",     :limit => 8
    t.timestamp "createdtime",               :null => false
  end

  create_table "user_wishlists", :force => true do |t|
    t.integer   "user_id",         :limit => 8
    t.string    "plan_name",       :limit => 100
    t.text      "cart_data"
    t.datetime  "createdtime",                                   :null => false
    t.timestamp "updatedtime",                                   :null => false
    t.string    "hash",            :limit => 6
    t.text      "description"
    t.integer   "category"
    t.boolean   "permission"
    t.integer   "buyer_acreepted", :limit => 1,   :default => 0, :null => false
    t.string    "note",            :limit => 50
  end

  add_index "user_wishlists", ["hash"], :name => "hash"

  create_table "user_wishlists_item", :id => false, :force => true do |t|
    t.integer   "wishlist_id",      :default => 0, :null => false
    t.integer   "item_id",          :default => 0, :null => false
    t.integer   "item_quantity",    :default => 1
    t.text      "item_options"
    t.timestamp "item_createdtime",                :null => false
    t.datetime  "item_updatedtime"
    t.float     "item_price"
  end

  create_table "user_wishlists_share", :force => true do |t|
    t.integer "wishlist_id"
    t.string  "share_email", :limit => 50
    t.integer "user_id"
    t.integer "permission",  :limit => 1
    t.boolean "viewed",                    :default => false
    t.integer "for_request", :limit => 8
  end

  add_index "user_wishlists_share", ["share_email"], :name => "email_index"
  add_index "user_wishlists_share", ["user_id"], :name => "board_shared_to_user_index"
  add_index "user_wishlists_share", ["wishlist_id"], :name => "board_id"

  create_table "users", :primary_key => "user_id", :force => true do |t|
    t.string    "user_name",                                                        :null => false
    t.string    "user_email",                                                       :null => false
    t.text      "user_avatar"
    t.string    "user_cover_image"
    t.string    "user_full_name",                                :default => ""
    t.date      "user_birthday"
    t.string    "user_pass"
    t.string    "user_street"
    t.string    "user_city"
    t.string    "user_state"
    t.string    "user_zip"
    t.string    "user_country"
    t.string    "user_phone"
    t.string    "user_company",                                                     :null => false
    t.string    "user_fax"
    t.string    "user_url"
    t.float     "long"
    t.float     "lat"
    t.string    "formataddress",                  :limit => 500
    t.string    "user_note",                      :limit => 500, :default => " "
    t.string    "fb_id",                          :limit => 20
    t.string    "from_source_ads",                :limit => 600, :default => "",    :null => false
    t.string    "fb_access_key",                  :limit => 500
    t.string    "linkedin_id",                    :limit => 60,  :default => "",    :null => false
    t.timestamp "user_created_time",                                                :null => false
    t.float     "user_bucks",                                    :default => 0.0
    t.float     "user_free_buck",                                :default => 100.0
    t.string    "user_rf_from",                   :limit => 20
    t.boolean   "earnbyfb",                                      :default => false
    t.boolean   "earnbytw",                                      :default => false
    t.integer   "earnbyfollow",                                  :default => 0
    t.string    "oauth_token"
    t.string    "oauth_token_secret"
    t.string    "tw_id"
    t.string    "tw_name"
    t.string    "ip",                             :limit => 50
    t.integer   "user_type",                      :limit => 1,   :default => 0
    t.integer   "isFeature",                                     :default => 1000
    t.string    "business_name",                  :limit => 100
    t.string    "tax_id",                         :limit => 50
    t.string    "user_company_address",           :limit => 300, :default => "",    :null => false
    t.string    "user_company_city",              :limit => 130, :default => "",    :null => false
    t.string    "user_company_state",             :limit => 130, :default => "",    :null => false
    t.string    "user_company_zip",               :limit => 30,  :default => "",    :null => false
    t.string    "user_company_country",           :limit => 130, :default => "",    :null => false
    t.string    "user_warehouse_address",         :limit => 300, :default => "",    :null => false
    t.string    "user_warehouse_city",            :limit => 130, :default => "",    :null => false
    t.string    "user_warehouse_state",           :limit => 130, :default => "",    :null => false
    t.string    "user_warehouse_zip",             :limit => 30,  :default => "",    :null => false
    t.string    "user_warehouse_country",         :limit => 130, :default => "",    :null => false
    t.integer   "user_shipping_lead_time",        :limit => 3,                      :null => false
    t.integer   "user_have_dropship",             :limit => 1,                      :null => false
    t.string    "user_provide_inventory_updates", :limit => 30,  :default => "",    :null => false
    t.string    "user_is_a",                      :limit => 10,  :default => "",    :null => false
    t.string    "user_target_price_range",        :limit => 10,  :default => "",    :null => false
    t.string    "user_looking_for",               :limit => 10,  :default => "",    :null => false
    t.string    "user_job_title"
    t.text      "user_about_you"
    t.integer   "send_mail_claim",                :limit => 1,   :default => 0
    t.datetime  "time_send_mail_claim"
    t.boolean   "store_active",                                  :default => false
    t.string    "store_name",                     :limit => 100
    t.text      "store_description"
    t.string    "store_avatar",                   :limit => 100
    t.string    "store_cover_image",              :limit => 100
  end

  create_table "users_backup_2305", :primary_key => "user_id", :force => true do |t|
    t.string    "user_name",                                                        :null => false
    t.string    "user_email",                                                       :null => false
    t.text      "user_avatar"
    t.string    "user_cover_image"
    t.string    "user_full_name"
    t.date      "user_birthday"
    t.string    "user_pass"
    t.string    "user_street"
    t.string    "user_city"
    t.string    "user_state"
    t.string    "user_zip"
    t.string    "user_country"
    t.string    "user_phone"
    t.string    "user_company",                                                     :null => false
    t.string    "user_fax"
    t.string    "user_url"
    t.float     "long"
    t.float     "lat"
    t.string    "formataddress",                  :limit => 500
    t.string    "user_note",                      :limit => 500, :default => " "
    t.string    "fb_id",                          :limit => 20
    t.string    "from_source_ads",                :limit => 600, :default => "",    :null => false
    t.string    "fb_access_key",                  :limit => 500
    t.string    "linkedin_id",                    :limit => 60,  :default => "",    :null => false
    t.timestamp "user_created_time",                                                :null => false
    t.float     "user_bucks",                                    :default => 0.0
    t.string    "user_rf_from",                   :limit => 20
    t.boolean   "earnbyfb",                                      :default => false
    t.boolean   "earnbytw",                                      :default => false
    t.integer   "earnbyfollow",                                  :default => 0
    t.string    "oauth_token"
    t.string    "oauth_token_secret"
    t.string    "tw_id"
    t.string    "tw_name"
    t.string    "ip",                             :limit => 50
    t.integer   "user_type",                      :limit => 1,   :default => 0
    t.integer   "isFeature",                                     :default => 0
    t.string    "business_name",                  :limit => 100
    t.string    "tax_id",                         :limit => 50
    t.string    "user_company_address",           :limit => 300, :default => "",    :null => false
    t.string    "user_company_city",              :limit => 130, :default => "",    :null => false
    t.string    "user_company_state",             :limit => 130, :default => "",    :null => false
    t.string    "user_company_zip",               :limit => 30,  :default => "",    :null => false
    t.string    "user_company_country",           :limit => 130, :default => "",    :null => false
    t.string    "user_warehouse_address",         :limit => 300, :default => "",    :null => false
    t.string    "user_warehouse_city",            :limit => 130, :default => "",    :null => false
    t.string    "user_warehouse_state",           :limit => 130, :default => "",    :null => false
    t.string    "user_warehouse_zip",             :limit => 30,  :default => "",    :null => false
    t.string    "user_warehouse_country",         :limit => 130, :default => "",    :null => false
    t.integer   "user_shipping_lead_time",        :limit => 3,                      :null => false
    t.integer   "user_have_dropship",             :limit => 1,                      :null => false
    t.string    "user_provide_inventory_updates", :limit => 30,  :default => "",    :null => false
    t.string    "user_is_a",                      :limit => 10,  :default => "",    :null => false
    t.string    "user_target_price_range",        :limit => 10,  :default => "",    :null => false
    t.string    "user_looking_for",               :limit => 10,  :default => "",    :null => false
    t.string    "user_job_title"
    t.text      "user_about_you"
  end

  create_table "users_old", :primary_key => "user_id", :force => true do |t|
    t.string    "user_name",                                            :null => false
    t.string    "user_email",                                           :null => false
    t.text      "user_avatar"
    t.string    "user_full_name"
    t.date      "user_birthday"
    t.string    "user_pass"
    t.string    "user_street"
    t.string    "user_city"
    t.string    "user_state"
    t.string    "user_zip"
    t.string    "user_country"
    t.string    "user_phone"
    t.string    "user_fax"
    t.string    "user_url"
    t.float     "long"
    t.float     "lat"
    t.string    "formataddress",      :limit => 500
    t.string    "user_note",          :limit => 500, :default => " "
    t.string    "fb_id",              :limit => 20
    t.string    "from_source_ads",    :limit => 600, :default => "",    :null => false
    t.string    "fb_access_key",      :limit => 500
    t.timestamp "user_created_time",                                    :null => false
    t.float     "user_bucks",                        :default => 0.0
    t.string    "user_rf_from",       :limit => 20
    t.boolean   "earnbyfb",                          :default => false
    t.boolean   "earnbytw",                          :default => false
    t.integer   "earnbyfollow",                      :default => 0
    t.string    "oauth_token"
    t.string    "oauth_token_secret"
    t.string    "tw_id"
    t.string    "tw_name"
    t.string    "ip",                 :limit => 50
  end

  create_table "visit_count", :primary_key => "visit_id", :force => true do |t|
    t.integer   "visit_item_id",     :limit => 8
    t.string    "visit_item_from"
    t.timestamp "visit_create_date",               :null => false
    t.string    "visit_address_id",  :limit => 50
  end

  create_table "{{storage}}", :id => false, :force => true do |t|
    t.string "key"
    t.text   "value"
  end

end
