require 'rails_helper'

RSpec.describe Schedule, type: :model do
  before do
    @schedule = FactoryBot.build(:schedule)
  end

  describe 'スケジュールの登録' do
    context 'スケジュールが登録できる場合' do
      it 'すべての項目が存在すれば登録できる' do
        
      end
      it 'contentが無くても登録できる' do
        
      end
    end
    context 'スケジュールが登録できない場合' do
      it 'タイトルが空では登録できない' do
        
      end
      it '日時が空では登録できない' do
        
      end
      it 'ユーザーが紐づいていなければ登録できない' do
        
      end
    end
  end
end
