FactoryBot.define do
  factory :post do
    name { Faker::Commerce.product_name }
    genre_id { 2 }
    rating { 3 }
    title { Faker::Lorem.sentence }
    review { Faker::Lorem.sentences }
    association :user
  end
end