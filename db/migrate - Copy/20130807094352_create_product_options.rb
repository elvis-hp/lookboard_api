class CreateProductOptions < ActiveRecord::Migration
  def change
    create_table :product_options do |t|

      t.timestamps
    end
  end
end
