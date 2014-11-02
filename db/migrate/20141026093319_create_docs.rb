class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.text :title
      t.text :content
      t.references :user, index: true

      t.timestamps null: false
    end
      add_index :docs, [:user_id, :created_at]
  end
end
	