# This migration comes from sss (originally 5)
class AddSalePriceToSpreePrices < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_prices, :sale_price, :decimal, precision: 8, scale: 2
  end
end
