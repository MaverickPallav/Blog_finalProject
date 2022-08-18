class Blogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :Title
      t.string :Summary
      t.integer :PublishedDate
      t.integer :Image
      t.timestamps
    end
  end
end
