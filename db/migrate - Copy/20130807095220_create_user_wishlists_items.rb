class CreateUserWishlistsItems < ActiveRecord::Migration
  def change
    create_table :user_wishlists_items do |t|

      t.timestamps
    end
  end
end
