class RemoveUserIdFromDocuments < ActiveRecord::Migration
  def change
    remove_column :documents, :user_id, :integer
  end
end
