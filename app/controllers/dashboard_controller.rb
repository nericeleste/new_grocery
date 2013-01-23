class DashboardController < ApplicationController
  def index
  	@logged_username = 'Guest'
  	@display_logout = true	
  	@items = Item.all
  end
end
