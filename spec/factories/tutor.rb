FactoryBot.define do
  factory :tutor do
    name { Faker::Name.name }
    bio { Faker::Lorem.paragraph }
    association :course
  end
end
