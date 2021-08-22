class PurchasesController < ApplicationController


  
  def index
    @item = Item.find(params[:item_id])
    @purchase_address = PurchaseAddress.new

  end
   



  def create
      
    @purchase_address = PurchaseAddress.new(purchases_params)
    @item = Item.find(params[:item_id])
    # インスタンス生成のために、PurchasesAddress.newといった形でフォームオブジェクトファイルを指定する
   if @purchase_address.save
     
     redirect_to  root_path
   else
     render :new
   end
 end






private
  def purchases_params
    params.require(:purchase_address).permit(:postal_code,:prefecture_id,:municipalities,:address,:building,:phone_number).merge(user_id:current_user.id,item_id: params[:item_id])
  end

end


