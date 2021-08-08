require 'rails_helper'

RSpec.describe Item, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  before do
    # describe '#create' do
    @item = FactoryBot.build(:item)
  end

  describe '商品管理機能' do
    context "内容に問題ない場合"  do
      it '商品管理機能が含まれている場合は登録できる' do
        expect(@item).to be_valid
      end
    end 
    context "内容が問題ある場合" do
      it 'nameが空では登録できない' do
        @item.name= ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Name can't be blank"
      end
      it 'categoryが空では登録できない' do
        @item.category_id= ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Category can't be blank"
      end
      it 'Delivery chargeが空では登録できない' do
        @item.delivery_charge_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Delivery charge can't be blank"
      end
      it 'Statusが空では登録できない' do
        @item.status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Status can't be blank"
      end
     
      it 'Until shippingsが空では登録できない' do
        @item.until_shipping_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Until shipping can't be blank"
      end
     

      it 'Prefecture が空では登録できない' do
        @item.prefecture_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Prefecture can't be blank"
      end
     
      it 'Imageが空では登録できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include "Image can't be blank"
      end
     

      it 'Explainが空では登録できない' do
        @item.explain = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Explain can't be blank"
      end

      it 'Priceが空では登録できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Price can't be blank"
      end

      it 'categoryが空では登録できない' do
        @item.category_id= ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Category can't be blank"
      end
      it 'Delivery chargeが空では登録できない' do
        @item.delivery_charge_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Delivery charge can't be blank"
      end
      it 'Statusが空では登録できない' do
        @item.status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Status can't be blank"
      end
     
      it 'Until shippingsが空では登録できない' do
        @item.until_shipping_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Until shipping can't be blank"
      end
     

      it 'Prefecture が1では登録できない' do
        @item.prefecture_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Prefecture can't be blank"
      end

      it 'category が1では登録できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Category can't be blank"
      end

      it 'deliverycharge が1では登録できない' do
        @item.delivery_charge_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Delivery charge can't be blank"
      end


      it 'status が1では登録できない' do
        @item.status_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Status can't be blank"
      end


      it 'untilshipping が1では登録できない' do
        @item.until_shipping_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Until shipping can't be blank"
      end

     
      it 'Priceが299以下〜10,000,000以上は登録できない' do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include "Price must be greater than or equal to 300"
      end










  # validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
  # validates :delivery_charge_id, numericality: { other_than: 1 , message: "can't be blank"}
  # validates :status_id, numericality: { other_than: 1 , message: "can't be blank"}
  # validates :until_shipping_id, numericality: { other_than: 1 , message: "can't be blank"}
  # validates :prefecture_id, numericality: { other_than: 1 , message: "can't be blank"}
  # validates :user_id, numericality: { other_than: 1 , message: "can't be blank"}
  


     



      # alidates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
      # validates :delivery_charge_id, numericality: { other_than: 1 , message: "can't be blank"}
      # validates :status_id, numericality: { other_than: 1 , message: "can't be blank"}
      # validates :until_shipping_id, numericality: { other_than: 1 , message: "can't be blank"}
      # validates :prefecture_id, numericality: { other_than: 1 , message: "can't be blank"}
      # validates :user_id, numericality: { other_than: 1 , message: "can't be blank"}
      










    end
  end
end
