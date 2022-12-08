FactoryBot.define do
  factory :listing do
    title { "MyString" }
    price { 1 }
    year { 1 }
    sold { false }
    description { "MyText" }
    user { nil }
    category { nil }
    brand { nil }
    country { nil }
  end
end
