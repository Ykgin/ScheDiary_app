FactoryBot.define do
  factory :diary do
    content {Faker::Lorem.sentence}
    association :user
    association :schedule
  end
end
