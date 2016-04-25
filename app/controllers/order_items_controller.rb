class OrderItemsController < ApplicationController

  
 # CREATE
  def new
    @item = OrderItem.new
  end

  def create
    @item = OrderItem.new
    @item.menu_id   = params["menu_id"]
    @item.order_id  = params["order_id"]
    @item.sauce     = params["sauce"]
    @item.heat      = params["heat"]
    @item.quantity  = params["quantity"]
    
    if @item.save
      redirect_to order_url(@item.order_id), :notice => "Order item created successfully."
    else
      render 'new'
    end
  end
 
  # READ
  def show
    @item = OrderItem.find_by(:id => params[:id])
    if @item.present?
        render "show"
    else
       redirect_to order_items_url, :notice => "The record doesn't exist"
    end
  end
  
  
  def index
    @item = OrderItem.all
    render "index"
  end

  # UPDATE
  
  def edit
    @item=OrderItem.find(params[:id])   # How do I use find_by? | @item=Menu.find_by(:id => params[:id])
    render "edit"
  end
  
  def update
    @item=OrderItem.find(params[:id])
    @item.menu_id          = params["menu_id"]
    @item.order_id         = params["order_id"]
    @item.sauce         = params["sauce"]
    @item.heat    = params["heat"]
    @item.quantity      = params["quantity"]
    if @item.save
        redirect_to order_item_url(@item.id)
    else
      render "new"
    end
  end
  
  
  # DELETE
  def destroy
    @item = OrderItem.find(params[:id])
    @item.destroy
    redirect_to "/order_items", :notice => "Order item deleted."
  end

end

