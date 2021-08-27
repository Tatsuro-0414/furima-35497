class PurchasesController < ApplicationController
  before_action :authenticate_user!


  
  def index
    @item = Item.find(params[:item_id])
    @purchase_address = PurchaseAddress.new
    @purchase =Purchase.new
   if current_user.id == @item.user.id || @item.purchase 
      redirect_to  root_path
   end
   
  end
   



  def create
    @purchase_address = PurchaseAddress.new(purchases_params)
    @item = Item.find(params[:item_id])
    
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

end


# private

# def purchase_params
#   params.require(:purchase).permit(:price)
# end


