class Community < ActiveRecord::Base
  has_many :user_communities, :dependent => :destroy
  has_many :community_posts, :dependent => :destroy
  has_many :users ,:through=> :user_communities
  has_many :posts ,:through=> :community_posts
end
