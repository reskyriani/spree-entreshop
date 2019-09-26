# This migration comes from sss (originally 2)
class AddNameToSpreeUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_users, :name, :string
  end
end
