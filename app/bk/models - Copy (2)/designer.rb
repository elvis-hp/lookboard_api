class Designer < ActiveRecord::Base
    attr_accessible :designer_id, :SeoUrl, :Keywords, :MetaDescription, :TitleSeo, :designer_name, :designer_vender, :designer_text, :designer_text_qa, :designer_status, :designer_avatar, :designer_image1, :designer_image2, :designer_image3, :designer_image4, :look_id
end
