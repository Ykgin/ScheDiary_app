class Schedule < ApplicationRecord
  belongs_to :user
  has_many :diaries

  validates :title, presence: true
  validates :start_time, presence: true
  
end
