class CreateCategoryParticipants < ActiveRecord::Migration
  def change
    create_table :category_participants do |t|
      t.integer :feed_id
      t.integer :category_id

      t.timestamps
    end
  end
end
