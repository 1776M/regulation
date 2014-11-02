class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.text :title
      t.text :content

      t.timestamps
    end
  end
end
