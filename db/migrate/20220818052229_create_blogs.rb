class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.integer :AuthorId
      t.string :Title
      t.string :Summary
      t.integer :PublishedDate
      t.image :Image
      t.timestamps
    end
  end
end
