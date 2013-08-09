class CreateUserWishlists < ActiveRecord::Migration
  def change
    create_table :user_wishlists do |t|

      t.timestamps
    end
  end
end
