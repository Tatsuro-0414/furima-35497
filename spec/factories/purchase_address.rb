FactoryBot.define do
  factory :purchase_address do
    card_token        {"トークン"}
    postal_code       {"123-4567"}
    phone_number      {"08011111111"}
    municipalities    {"市町村"}
    address           {"番地"}
    building          {"建物名"}
    prefecture_id     {48}

  end
  end
