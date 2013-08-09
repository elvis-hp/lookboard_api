class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :user_name
      t.string :user_email
      t.text :user_avatar
      t.string :user_cover_image
      t.string :user_full_name
      t.date :user_birthday
      t.string :user_pass
      t.string :user_street
      t.string :user_city
      t.string :user_state
      t.string :user_zip
      t.string :user_country
      t.string :user_phone
      t.string :user_company
      t.string :user_fax
      t.string :user_url
      t.float :long
      t.float :lat
      t.string :formataddress
      t.string :user_note
      t.string :fb_id
      t.string :from_source_ads
      t.string :fb_access_key
      t.string :linkedin_id
      t.timestamp :user_created_time
      t.float :user_bucks
      t.float :user_free_buck
      t.string :user_rf_from
      t.boolean :earnbyfb
      t.boolean :earnbytw
      t.integer :earnbyfollow
      t.string :oauth_token
      t.string :oauth_token_secret
      t.string :tw_id
      t.string :tw_name
      t.string :ip
      t.integer :user_type
      t.integer :isFeature
      t.string :business_name
      t.string :tax_id
      t.string :user_company_address
      t.string :user_company_city
      t.string :user_company_state
      t.string :user_company_zip
      t.string :user_company_country
      t.string :user_warehouse_address
      t.string :user_warehouse_city
      t.string :user_warehouse_state
      t.string :user_warehouse_zip
      t.string :user_warehouse_country
      t.integer :user_shipping_lead_time
      t.integer :user_have_dropship
      t.string :user_provide_inventory_updates
      t.string :user_is_a
      t.string :user_target_price_range
      t.string :user_looking_for
      t.string :user_job_title
      t.text :user_about_you
      t.integer :send_mail_claim
      t.datetime :time_send_mail_claim
      t.boolean :store_active
      t.string :store_name
      t.text :store_description
      t.string :store_avatar
      t.string :store_cover_image

      t.timestamps
    end
  end
end
