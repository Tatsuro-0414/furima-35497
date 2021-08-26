class PurchasesController < ApplicationController


  
  def index
    @item = Item.find(params[:item_id])
    @purchase_address = PurchaseAddress.new
    @purchase =Purchase.new

  end
   



  def create
    @purchase_address = PurchaseAddress.new(purchases_params)
    @item = Item.find(params[:item_id])
    # インスタンス生成のために、PurchasesAddress.newといった形でフォームオブジェクトファイルを指定する
   if @purchase_address.valid?
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]  # 自身のPAY.JPテスト秘密鍵を記述しましょう
      Payjp::Charge.create(
        amount: @item.price,  # 商品の値段
        card: purchases_params[:card_token],    # カードトークン
        currency: 'jpy'                 # 通貨の種類（日本円）
      )
      @purchase_address.save
     
     redirect_to  root_path
   else
     render :index
   end
   end
  
  #  @purchase =Purchase.new(purchase_params)
  #   if @purchase.valid?
  #    @purchase.save
  #    return redirect_to root_path
  #  else
  #    render 'index'
  




 






private
  def purchases_params
    params.require(:purchase_address).permit(:postal_code,:prefecture_id,:municipalities,:address,:building,:phone_number).merge(user_id:current_user.id,item_id: params[:item_id],card_token: params[:card_token])
  end

end


# private

# def purchase_params
#   params.require(:purchase).permit(:price)
# end


