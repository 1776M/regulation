class AddDocumentIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :document_id, :integer
    add_index :users, :document_id
  end
end
