class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.belongs_to :wall, null: false, foreign_key: true
      t.string :content
      t.string :img_url

      t.timestamps
    end
  end
end
