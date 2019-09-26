# This migration comes from sss (originally 4)
class AddOwnerRefToSpreeLineItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :spree_line_items, :owner, index: true
    add_foreign_key :spree_line_items, :spree_users, column: :owner_id
  end
end
