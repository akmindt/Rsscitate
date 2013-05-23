class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :feed_id
      t.text :summary
      t.text :body
      t.string :url
      t.string :author

      t.timestamps
    end
  end
end
