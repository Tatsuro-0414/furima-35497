require 'rails_helper'
RSpec.describe PurchaseAddress, type: :model do
    before do
      user = FactoryBot.create(:user)
      item = FactoryBot.create(:item)
      @purchase_address = FactoryBot.build(:purchase_address, user_id: user.id, item_id: item.id)
      sleep(1)
end


  


describe '購入管理機能' do
  context "内容に問題ない場合"  do
    it '商品管理機能が含まれている場合は登録できる' do
      expect(@purchase_address).to be_valid
    end
    it '建物名が抜けていても登録できること' do
      @purchase_address.building= ''
      expect(@purchase_address).to be_valid
    end
  end 

  context "内容が問題ある場合" do
    it 'tokenが空では登録できない' do
      @purchase_address.card_token= ''
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Card token can't be blank"
    end

    it 'postal_codeが空では登録できない' do
      @purchase_address.postal_code= ''
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Postal code can't be blank"
    end

    
    it 'Prefecturが空では登録できない' do
      @purchase_address.prefecture_id = ''
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Prefecture can't be blank"
    end

    it 'Municipaliyiesが空では登録できない' do
      @purchase_address.municipalities = ''
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Municipalities can't be blank"
    end
   
    it 'Addressesが空では登録できない' do
      @purchase_address.address = ''
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Address can't be blank"
    end
   

    it 'phonenumberが空では登録できない' do
      @purchase_address.phone_number = ''
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Phone number can't be blank"
    end
   
    it 'phonenumber11桁以内なら登録できない' do
      @purchase_address.phone_number = "1111111111"
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Phone number is invalid"
    end

   
    it 'postal_codeがハイフンがなければ登録できない' do
      @purchase_address.postal_code= "12345"
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Postal code is invalid. Include hyphen(-)"
    end

    it 'postal_codeが全角数字、英語、文字では登録できない' do
      @purchase_address.postal_code= "あ１２a A"
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Postal code is invalid. Include hyphen(-)"
    end

    it 'postal_codeが半角英語、文字は登録できない' do
      @purchase_address.postal_code= "abAあ"
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Postal code is invalid. Include hyphen(-)"
    end

    it 'phonenumberが英語、文字なら登録できない' do
      @purchase_address.phone_number = "abcあ"
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Phone number is invalid"
    end

    it 'phonenumberが全角数字、英語、文字ら登録できない' do
      @purchase_address.phone_number = "あ１a A"
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Phone number is invalid"
    end
   
    it 'prefectureが1では登録できない' do
      @purchase_address.prefecture_id = 1
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Prefecture can't be blank"
    end
    it 'phonenumberが12桁以上では登録できない' do
      @purchase_address.phone_number = "111111111111"
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Phone number is invalid"
    end
    it 'user_idが空では登録できない' do
      @purchase_address.user_id= ''
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "User can't be blank"
    end
    it 'item_idが空では登録できない' do
      @purchase_address.item_id= ''
      @purchase_address.valid?
      expect(@purchase_address.errors.full_messages).to include "Item can't be blank"
    end
    
  end
end   
end

