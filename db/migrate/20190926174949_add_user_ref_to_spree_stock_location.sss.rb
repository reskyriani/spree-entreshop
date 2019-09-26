# This migration comes from sss (originally 3)
class AddUserRefToSpreeStockLocation < ActiveRecord::Migration[5.2]
  def change
    add_reference :spree_stock_locations, :user, index: true
    add_foreign_key :spree_stock_locations, :spree_users, column: :user_id
  end
end
