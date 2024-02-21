require 'rails_helper'

RSpec.describe Diary, type: :model do
  before do
    @diary = FactoryBot.build(:diary)
  end

  describe '日記登録' do
    context '日記を登録できる' do
      it 'すべての項目が存在すれば登録できる' do
        
      end
    end
    context '日記を登録できない' do
      
    end
  end
end
