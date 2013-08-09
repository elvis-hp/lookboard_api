class CreateUserFollowings < ActiveRecord::Migration
  def change
    create_table :user_followings do |t|

      t.timestamps
    end
  end
end
