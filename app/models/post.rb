class Post < ActiveRecord::Base
	belongs_to :user
	attr_accessible :accessmode,:title,:content,:updated_at
	scope :pub, :conditions => {:accessmode =>1}
	scope :priv, :conditions => {:accessmode =>0}
end
