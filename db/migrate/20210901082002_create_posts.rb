class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :place
      t.string :genre
      t.text :about
      t.string :image

      t.timestamps
    end
  end
end
