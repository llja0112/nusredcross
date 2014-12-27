class StaticPagesController < ApplicationController
  def index
  	if user_signed_in?
  		redirect_to controller: :activities, action: :index
  	else
  	end
  end

  def about
  end

  def contact
  end
end
