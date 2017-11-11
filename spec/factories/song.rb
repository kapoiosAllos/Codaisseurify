FactoryGirl.define do
  factory :song do
  name  { Faker::Name.first_name }
  duration {Faker::Number.between(1, 600)}

  end
end
