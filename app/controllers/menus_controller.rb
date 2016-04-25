class MenusController < ApplicationController

 # CREATE
  def new
    unless current_user.present?
      redirect_to menus_url
    end
    @menu = Menu.new
  end

  def create
    @menu = Menu.new
    @menu.name          = params["name"]
    @menu.photo         = params["photo"]
    @menu.description   = params["description"]
    @menu.price         = params["price"]
    
    
    if @menu.save
      redirect_to "/menus", :notice => "Menu item created successfully."
    else
      render 'new'
    end
  end
 
  # READ
  def show
    @item = Menu.find_by(:id => params[:id])
    if @item.present?
        render "show"
    else
       redirect_to menus_url, :notice => "The record doesn't exist"
    end
  end
  
  
  def index
    @item = Menu.all
    render "index"
  end

  # UPDATE
  
  def edit
    @item=Menu.find(params[:id])   # How do I use find_by? | @item=Menu.find_by(:id => params[:id])
    render "edit"
  end
  
  def update
    @item=Menu.find(params[:id])
    @item.name          = params["name"]
    @item.photo         = params["photo"]
    @item.description   = params["description"]
    @item.price         = params["price"]

    if @item.save
        redirect_to menu_url(@item.id)
    else
      render "new"
    end
  end
  
  
  # DELETE
  def destroy
    @item = Menu.find(params[:id])
    @item.destroy
    redirect_to "/menus", :notice => "Menu item deleted."
  end

end


