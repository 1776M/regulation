class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.text :content
      t.references :document, index: true

      t.timestamps null: false
    end
     add_index :sections, [:document_id, :created_at]
  end
end
