class PurchasesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item,only: [:index, :create]


  
  def index
   
    @purchase_address = PurchaseAddress.new
   
   if current_user.id == @item.user.id || @item.purchase 
      redirect_to  root_path
   end
   
  end
   



  def create
    @purchase_address = PurchaseAddress.new(purchases_params)
   
    
   if @purchase_address.valid?
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]  
      Payjp::Charge.create(
        amount: @item.price,  
        card: purchases_params[:card_token],    
        currency: 'jpy'                 
      )
      @purchase_address.save
     
     redirect_to  root_path
   else
     render :index
   end
   end
private
  def purchases_params
    params.require(:purchase_address).permit(:postal_code,:prefecture_id,:municipalities,:address,:building,:phone_number).merge(user_id:current_user.id,item_id: params[:item_id],card_token: params[:card_token])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
end