FactoryBot.define do
  factory :user do
    nickname  {Faker::Name.initials}
    email  {Faker::Internet.free_email}
    password  {"a1" + Faker::Internet.password(min_length: 6)}
    password_confirmation  {password}
    birthday {Faker::Date.birthday}
  end
end
