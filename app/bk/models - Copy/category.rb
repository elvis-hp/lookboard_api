class Category < ActiveRecord::Base
    attr_accessible :CategoryID, :CategoryName, :Ranking, :ParentID,  :HasChildren, :Status, :Description, :LanguageID, :Icon, :HasDeal, :Seourl, :Title, :DescriptionTag, :Manufacturer, :MetaKeywords, :MetaPageTopic, :MetaGeoRegion, :MetaGeoPlaceName, :DescriptionMain, :TitleP, :DescriptionMainP, :FromUser, :updatedtime
end
