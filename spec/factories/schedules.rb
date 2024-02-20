FactoryBot.define do
  factory :schedule do
    title {Faker::Lorem.word}
    start_time {Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all)}
    content {Faker::Lorem.sentence}
    association :user
  end
end
