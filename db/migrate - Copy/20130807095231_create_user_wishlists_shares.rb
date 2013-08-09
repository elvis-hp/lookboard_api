class CreateUserWishlistsShares < ActiveRecord::Migration
  def change
    create_table :user_wishlists_shares do |t|

      t.timestamps
    end
  end
end
