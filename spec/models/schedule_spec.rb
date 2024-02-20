require 'rails_helper'

RSpec.describe Schedule, type: :model do
  before do
    @schedule = FactoryBot.build(:schedule)
  end

  describe 'スケジュールの登録' do
    context 'スケジュールが登録できる場合' do
      it 'すべての項目が存在すれば登録できる' do
        expect(@schedule).to be_valid
      end
      it 'contentが無くても登録できる' do
        @schedule.content = ''
        expect(@schedule).to be_valid
      end
    end
    context 'スケジュールが登録できない場合' do
      it 'タイトルが空では登録できない' do
        @schedule.title = ''
        @schedule.valid?
        expect(@schedule.errors.full_messages).to include("Title can't be blank")
      end
      it '日時が空では登録できない' do
        @schedule.start_time = ''
        @schedule.valid?
        expect(@schedule.errors.full_messages).to include("Start time can't be blank")
      end
      it 'ユーザーが紐づいていなければ登録できない' do
        @schedule.user = nil
        @schedule.valid?
        expect(@schedule.errors.full_messages).to include("User must exist")
      end
    end
  end
end
