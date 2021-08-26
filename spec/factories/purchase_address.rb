FactoryBot.define do
  factory :purchase_address do
    card_token        {"トークン"}
    postal_code       {"123-4567"}
    phone_number      {"08011111111"}
    municipalities    {"市町村"}
    address           {"番地"}
    building          {"建物名"}
    prefecture_id     {49}

   
  
   
  #   validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
  #   VALID_PHONE_NUMBER_REGEX = /\A0(\d{1}[-(]?\d{4}|\d{2}[-(]?\d{3}|\d{3}[-(]?\d{2}|\d{4}[-(]?\d{1})[-)]?\d{4}\z|\A0[5789]0[-]?\d{4}[-]?\d{4}\z/
  #   validates :phone_number,format: { with: VALID_PHONE_NUMBER_REGEX }

  #   validates :postal_code
  #   validates :municipalities
  #   validates :address
  #   validates :phone_number
  #   validates :card_token



  #   name                 {"名前"}
  # explain              {"説明"}
  # category_id          {2}
  # status_id            {3}
  # delivery_charge_id   {4}
  # until_shipping_id    {5}
  # price                {200000}
  # prefecture_id        {7}
  # association :user
  # after(:build) do |item|
  #   item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
  # end
  end
  end
