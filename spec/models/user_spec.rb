require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
it 'nicknameとemail、passwordとpassword_confirmationが存在すれば登録できる' do
  expect(@user).to be_valid
end

it 'nicknameが空では登録できない' do
  @user.nickname = ''
  @user.valid?
  expect(@user.errors.full_messages).to include "nickname can't be blank"

end
it 'emailが空では登録できない' do
  @user.email = ''
  @user.valid?
  expect(@user.errors.full_messages).to include "Email can't be blank"
end
it 'passwordは、5文字以下では登録出来ない' do
  @user.password = 'tespt'
  @user.valid?
  expect(@user.errors.full_messages).to include "Email can't be blank"
end
it 'passwordは、全角英字は登録出来ない' do
  @user.password = 'ｔａ'
  @user.valid?
  expect(@user.errors.full_messages).to include "Email can't be blank"
end

it 'passwordは、全角数字は登録出来ない' do
  @user.password = '０４１４'
  @user.valid?
  expect(@user.errors.full_messages).to include "Email can't be blank"
end


it 'password_confirmationが空では登録できない' do
  @user.password_confirmation = ''
  @user.valid?
  expect(@user.errors.full_messages).to include "password_confirmation can't be blank"

end

it 'nicknameが7文字未満では登録できない' do
  @user.nickname = 'タツロウ'
  @user.valid?
  expect(@user.errors.full_messages).to include "nickname can't be blank"

end
it '新規のemailが存在する場合登録できない' do
  @user.email = 'shimada@14'
  @user.valid?
  expect(@user.errors.full_messages).to include "Email can't be blank"
end

end
it 'passwordが4文字以下では登録できない' do
  @user.password = 'test'
  @user.valid?
  expect(@user.errors.full_messages).to include "Email can't be blank"
  
end
end