class AddReceiverIdToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :receiver_id, :integer
    add_column :posts, :sender_id, :integer
  end
end
