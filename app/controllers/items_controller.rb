class ItemsController < ApplicationController
  def new
  	@item = Item.new
    @grocery = Grocery.new
  end

  def create
  	@item = Item.new(params[:item])
  	if @item.save
  	  redirect_to :controller => 'dashboard', :action => 'index'
  	else
  	  render :action => 'new'
  	end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      redirect_to :controller => 'dashboard', :action => 'index'
    else
      render :action => 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to :controller => 'dashboard', :action => 'index'
  end
end
