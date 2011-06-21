class CreateCommunityPosts < ActiveRecord::Migration
  def self.up
    create_table :community_posts do |t|
      t.integer :community_id
      t.integer :post_id

      t.timestamps
    end
  end

  def self.down
    drop_table :community_posts
  end
end
