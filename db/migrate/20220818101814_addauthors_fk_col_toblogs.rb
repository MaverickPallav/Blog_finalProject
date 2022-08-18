class AddauthorsFkColToblogs < ActiveRecord::Migration[7.0]
  def change
    add_reference :blogs, :authors, foreign_key: true
  end
end
