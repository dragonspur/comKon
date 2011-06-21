class CommunityPost < ActiveRecord::Base
 belongs_to :community
 belongs_to :post
end
