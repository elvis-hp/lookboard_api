class Supplier < ActiveRecord::Base
  self.pluralize_table_names = false
  attr_accessible :Category, :City, :Contact, :Country, :Design, :Email, :Fax, :InternetExposure, :InternetPresence, :Inventory, :Phone, :Price, :SaleEvent_Avatar, :SaleEvent_Description, :SaleEvent_Image, :SaleEvent_Intro, :SaleEvent_Name, :SaleEvent_QuoteText, :SaleEvent_Quotename, :SaleEvent_Text, :SaleEvent_Thumb, :SaleEvent_Title, :SendGroup, :SendMethod, :SendShip, :SendTemplate, :State, :Street, :Street2, :Suffix, :SuffixInd, :Supplier, :SupplierID, :Supplier_Note, :Supplier_description, :URL, :Zip, :claimed, :for_level, :formataddress, :isfeature, :lat, :long, :payment_method, :pickup, :sell_type, :shipping_lead_time, :updatedtime, :updatenow, :user_id
end
