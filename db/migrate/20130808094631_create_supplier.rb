class CreateSupplier < ActiveRecord::Migration
  def change
    create_table :supplier do |t|
      t.integer :SupplierID
      t.string :SaleEvent_Name
      t.string :SaleEvent_Intro
      t.string :Supplier_description
      t.string :Supplier
      t.string :SaleEvent_Description
      t.string :Contact
      t.string :Street
      t.string :Street2
      t.string :City
      t.string :State
      t.string :Zip
      t.string :Country
      t.string :Phone
      t.string :Fax
      t.string :Email
      t.string :URL
      t.string :SendMethod
      t.string :SendGroup
      t.string :SendTemplate
      t.string :SendShip
      t.string :Suffix
      t.string :SuffixInd
      t.float :long
      t.float :lat
      t.string :formataddress
      t.integer :pickup
      t.string :SaleEvent_Title
      t.string :SaleEvent_Text
      t.string :SaleEvent_QuoteText
      t.string :SaleEvent_Quotename
      t.string :SaleEvent_Avatar
      t.string :SaleEvent_Image
      t.string :SaleEvent_Thumb
      t.integer :updatenow
      t.timestamp :updatedtime
      t.integer :isfeature
      t.string :payment_method
      t.integer :user_id
      t.string :Price
      t.string :Design
      t.string :Inventory
      t.text :Category
      t.float :shipping_lead_time
      t.string :sell_type
      t.integer :claimed
      t.string :Supplier_Note
      t.string :InternetExposure
      t.string :InternetPresence
      t.string :for_level

      t.timestamps
    end
  end
end
