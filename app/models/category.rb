class Category < ActiveRecord::Base
  self.pluralize_table_names = false
  attr_accessible :CategoryID, :CategoryName, :Description, :DescriptionMain, :DescriptionMainP, :DescriptionTag, :FromUser, :HasChildren, :HasDeal, :Icon, :LanguageID, :Manufacturer, :MetaGeoPlaceName, :MetaGeoRegion, :MetaKeywords, :MetaPageTopic, :ParentID, :Ranking, :Seourl, :Status, :Title, :TitleP, :updatedtime
end
