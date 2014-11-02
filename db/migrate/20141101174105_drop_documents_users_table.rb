class DropDocumentsUsersTable < ActiveRecord::Migration

  def self.up
    drop_table :documents_users
  end

  def self.down
    
    create_table :documents_users, :id => false do |t|
      t.integer :document_id
      t.integer :user_id
    end 
  end

end

