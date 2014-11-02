class RemoveDocumentIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :document_id, :integer
  end
end
