# This migration comes from sss_messages (originally 4)
class AddDeliveryTrackingInfoToMailboxerReceipts < ActiveRecord::Migration[5.2]
  def change
    add_column :mailboxer_receipts, :is_delivered, :boolean, default: false
    add_column :mailboxer_receipts, :delivery_method, :string
    add_column :mailboxer_receipts, :message_id, :string
  end
end
