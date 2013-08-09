class CreateCategory < ActiveRecord::Migration
  def change
    create_table :category do |t|
      t.integer :CategoryID
      t.string :CategoryName
      t.integer :Ranking
      t.integer :ParentID
      t.binary :HasChildren
      t.integer :Status
      t.string :Description
      t.integer :LanguageID
      t.string :Icon
      t.integer :HasDeal
      t.string :Seourl
      t.string :Title
      t.text :DescriptionTag
      t.string :Manufacturer
      t.string :MetaKeywords
      t.string :MetaPageTopic
      t.string :MetaGeoRegion
      t.string :MetaGeoPlaceName
      t.string :DescriptionMain
      t.string :TitleP
      t.string :DescriptionMainP
      t.integer :FromUser
      t.timestamp :updatedtime

      t.timestamps
    end
  end
end
