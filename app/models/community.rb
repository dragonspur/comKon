class Community < ActiveRecord::Base
  has_many :user_communities, :dependent => :destroy
  has_many :users ,:through=> :user_communities
end
