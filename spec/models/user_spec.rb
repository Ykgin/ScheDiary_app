require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it 'すべての項目が存在すれば登録できる' do
        
      end
    end

    context '新規登録できない場合' do
      it 'ニックネームが空では登録できない' do
        
      end
      it 'emailが空では登録できない' do
        
      end
      it 'passwordが空では登録できない' do
        
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        
      end
      it '生年月日が空では登録できない' do
        
      end
      it '重複したemailが存在する場合登録できない' do
        
      end
      it 'emailは@を含まないと登録できない' do
        
      end
      it 'passwordが5文字以下では登録できない' do
        
      end
      it 'passwordが英字だけでは登録できない' do
        
      end
      it 'passwordが数字だけでは登録できない' do
        
      end
      it 'passwordは全角文字を含んでいる場合登録できない' do
        
      end
    end
  end
end
