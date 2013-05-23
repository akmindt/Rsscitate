class CreateFeedSubscriptions < ActiveRecord::Migration
  def change
    create_table :feed_subscriptions do |t|
      t.integer :feed_id
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end
