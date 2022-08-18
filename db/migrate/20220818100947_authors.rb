class Authors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :Name
      t.string :Email
      t.string :Password
      t.integer :RegisteredDate
      t.integer :LastloginDate
      t.string :Bio
      t.timestamps
    end
  end
end
