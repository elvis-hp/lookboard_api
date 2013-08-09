class CreateProductLivings < ActiveRecord::Migration
  def change
    create_table :product_living do |t|

      t.timestamps
    end
  end
end
