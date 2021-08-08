FactoryBot.define do
  factory :item do
  name                 {"名前"}
  explain              {"説明"}
  category_id          {2}
  status_id            {3}
  delivery_charge_id   {4}
  until_shipping_id    {5}
  price                {200000}
  prefecture_id        {7}
  association :user
  after(:build) do |item|
    item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
  end
  end
end



# factory :user do
#    first_name_zenkaku    {"山田"}
#    last_name_zenkaku     {"太郎"}
#    first_name_furigana   {"ヤマダ"}
#    last_name_furigana    {"タロウ"}
#    birth_date            {"1989-04-14"}           
#  end
