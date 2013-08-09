class CreateProductOptionTypes < ActiveRecord::Migration
  def change
    create_table :product_option_types do |t|

      t.timestamps
    end
  end
end
