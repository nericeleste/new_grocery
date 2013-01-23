class GroceriesController < ApplicationController
  def new
  	@grocery = Grocery.new
  end

  def create
  	@grocery = Grocery.new(params[:grocery])
  	if @grocery.save
  	  redirect_to :controller => 'items', :action => 'new'
  	else
  	  render :action => 'new'
  	end
  end
end
