require 'rails_helper'

RSpec.describe Category, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  before do
    @item = FactoryBot.build(:user)
  end
end

  describe '商品管理機能' do
    context "内容に問題ない場合"  do
      it '商品管理機能が含まれている場合は登録できる' do
        expect(@item).to be_valid
      end
    end 
    context "内容が問題ある場合" do
      it 'nameが空では登録できない' do
        @user.name= ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Nickname can't be blank"
      end
      it 'categoryが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Category can't be blank"
      end
      it 'Delivery chargeが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Delivery charge can't be blank"
      end
      it 'Statusが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Status can't be blank"
      end
     
      it 'Until shippingsが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Until shipping can't be blank"
      end
     

      it 'Prefecture が空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Prefecture  can't be blank"
      end
     
      it 'Userが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "User  can't be blank"
      end
     

      it 'Explainが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "User  can't be blank"
      end

      it 'Priceが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Price  can't be blank"
      end
     














    end
  end
end
