# This migration comes from sss (originally 1)
class AddUserRefToSpreeProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :spree_products, :user, index: true
    add_foreign_key :spree_products, :spree_users, column: :user_id
  end
end
