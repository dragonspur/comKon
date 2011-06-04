class PagesController < ApplicationController
  def home
	if user_signed_in?
		@posts=Post.all
	else 
		@posts=Post.pub
	end
  end

  def contact
  end

end
