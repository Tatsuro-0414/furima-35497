require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context "内容に問題ない場合"  do
      it 'ユーザーの全ての項目が含まれている場合は登録できる' do
        expect(@user).to be_valid
      end
    end 
    context "内容が問題ある場合" do
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Nickname can't be blank"
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end
      it 'passwordは、5文字以下では登録出来ない' do
        @user.password = 'ame14'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
      it 'passwordは、全角文字では登録出来ない' do
        @user.password = 'あいうａ'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end

      it 'passwordは、半角数字のみは登録出来ない' do
        @user.password = '1234'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end

      it 'passwordは、半角英字のみは登録出来ない' do
        @user.password = 'ame14'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end

      


      it 'password_confirmationが空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end


      it '新規のemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end

      


       

     

      it 'first_name_zenkakuが空では登録できない' do
        @user.first_name_zenkaku = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "First name zenkaku can't be blank"
      end

      it 'first_name_zenkakuが漢字・ひらがな・カタカナ以外では登録できない' do
        @user.first_name_zenkaku = 'aaa'
        @user.valid?
        expect(@user.errors.full_messages).to include "First name zenkaku 漢字・ひらがな・カタカナ以外では登録できない"
      end

      it 'last_name_zenkakuが空では登録できない' do
        @user.last_name_zenkaku = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Last name zenkaku can't be blank"
      end

      it 'last_name_zenkakuが漢字・ひらがな・カタカナ以外では登録できない' do
        @user.last_name_zenkaku = 'aaa'
        @user.valid?
        expect(@user.errors.full_messages).to include "Last name zenkaku 漢字・ひらがな・カタカナ以外では登録できない"
      end

      it 'first_name_furiganaが空では登録できない' do
        @user.first_name_furigana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "First name furigana can't be blank"
      end


      it 'first_name_furiganaが全角カタカナ以外では登録できない（ひらがな） ' do
        @user.last_name_furigana= 'あああ'
        @user.valid?
        expect(@user.errors.full_messages).to include "Last name furigana はカタカナで入力して下さい。"
      end
      

      

      it 'last_name_furiganaが空では登録できない' do
        @user.last_name_furigana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Last name furigana はカタカナで入力して下さい。"
      end

        it 'last_name_furiganaが全角カタカナ以外では登録できない（ひらがな））' do
          @user.last_name_furigana = 'あああ'
          @user.valid?
          expect(@user.errors.full_messages).to include "Last name furigana はカタカナで入力して下さい。"
        end
        
          it 'first_name_furiganaが全角カタカナ以外では登録できない（半角英数字）' do
            @user.last_name_furigana = 'aaa'
            @user.valid?
            expect(@user.errors.full_messages).to include "Last name furigana はカタカナで入力して下さい。"
          end
            
  
          it 'birth_dateが空では登録できない' do
              @user.birth_date = ''
              @user.valid?
              expect(@user.errors.full_messages).to include "Birth date can't be blank"
          end
              
          it 'password空では登録できない' do
            @user.password = ''
            @user.valid?
            expect(@user.errors.full_messages).to include "Password can't be blank"
        end
            


      










    end
  end
end
