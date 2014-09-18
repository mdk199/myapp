class CreateWikiLinks < ActiveRecord::Migration
  def change
    create_table :wiki_links do |t|
      t.text :url
      t.integer :linkable_id
      t.string :linkable_type
      t.timestamps
    end
  end
end