class Post < ActiveRecord::Base
	belongs_to :user
	attr_accessible :accessmode,:title,:content,:updated_at
	scope :pub, :conditions => {:accessmode =>1}
	scope :priv, :conditions => {:accessmode =>0}
	#has_many :community_posts, :depentdent => :destroy
	has_many :communities, :through => :community_posts
	has_many :community_posts, :dependent => :destroy
end
