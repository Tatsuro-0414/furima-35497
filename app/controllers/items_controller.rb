class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @items = Item.order(created_at: :desc)
   
  end

  def new
    @item = Item.new
  end

  def create
     @item = Item.new(items_params)
     
    if @item.save
      redirect_to  root_path
    else
      render :new
    end
  
  
end
end

  
private
  def items_params
    params.require(:item).permit(:image,:name,:category_id, :status_id,:explain,:delivery_charge_id,:until_shipping_id,:prefecture_id,:price).merge(user_id: current_user.id)
  end


  
