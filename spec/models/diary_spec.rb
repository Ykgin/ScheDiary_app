require 'rails_helper'

RSpec.describe Diary, type: :model do
  before do
    @diary = FactoryBot.build(:diary)
  end

  describe '日記登録' do
    context '日記を登録できる' do
      it 'すべての項目が存在すれば登録できる' do
        expect(@diary).to be_valid
      end
    end
    context '日記を登録できない' do
      it '日記が存在しなければ登録できない' do
        
      end
      it 'ユーザーが紐付いていなければ登録できない' do
        
      end
      it 'スケジュールが紐づいていなければ登録できない' do
        
      end
    end
  end
end
