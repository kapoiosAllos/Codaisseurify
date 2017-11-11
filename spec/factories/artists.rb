
FactoryGirl.define do
  factory :artist do
    name    {  Faker::Lorem.word(30) }
  end
end
