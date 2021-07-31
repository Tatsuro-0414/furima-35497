require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
it 'nicknameとemail、passwordとpassword_confirmationが存在すれば登録できる' do
  expect(@user).to be_valid
end
it 'nicknameが6文字以下であれば登録できる' do
  @user.password = '000000'
  expect(@user).to be_valid

end
it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
  @user.password_confirmation = '000000'
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
it 'passwordは、６文字以上での入力が必須であること（半角英数字が混合されていれば、登録が可能なこと）' do
  @user.password = 'testtest'
  @user.password = "３７S"
  @user.valid?
  expect(@user.errors.full_messages).to include "Email can't be blank"
end
it 'passwordが存在してもpassword_confirmationが空では登録できない' do
end
it 'nicknameが7文字以上では登録できない' do
end
it '重複したemailが存在する場合登録できない' do
end
it 'passwordが5文字以下では登録できない' do
end
end
end