class ReviewsController < ApplicationController

  
  before_action :check_if_sign_in_and_admin, :only => [:edit]
  
  # CREATE
  def new
    @item = Review.new
  end

  def create
    @item = Review.new
    @item.name          = params["name"]
    @item.message       = params["message"]
    @item.rate          = params["rate"]
    @item.city          = params["city"]         
    @item.state         = params["state"]
    
    if @item.save
      redirect_to "/reviews", :notice => "Review created successfully."
    else
      render 'new'
    end
  end
 
  # READ
  def show
    @item = Review.find_by(:id => params[:id])
    if @item.present?
        render "show"
    else
       redirect_to reviews_url, :notice => "The record doesn't exist"
    end
  end
  
  
  def index
    @item = Review.all
    render "index"
  end

  # UPDATE
  
  def edit
    @item=Review.find(params[:id])   # How do I use find_by? | @item=Order.find_by(:id => params[:id])
    render "edit"
  end
  
  def update
    @item=Review.find(params[:id])
    @item.name          = params["name"]
    @item.message       = params["message"]
    @item.rate          = params["rate"]
    @item.city          = params["city"]         
    @item.state         = params["state"]
    if @item.save
        redirect_to review_url(@item.id)
    else
      render "new"
    end
  end
  
  
  # DELETE
  def destroy
    @item = Review.find(params[:id])
    @item.destroy
    redirect_to "/reviews", :notice => "Review item deleted."
  end

  def check_if_sign_in_and_admin
    unless current_user.present? && current_user.admin?
      redirect_to reviews_url, :notice => "You don't have the right to edit reviews"
    end
  end

end
