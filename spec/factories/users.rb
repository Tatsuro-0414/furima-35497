FactoryBot.define do
  factory :user do
   nickname             {Faker::Name.initials(number: 2)}
   email                 {Faker::Internet.free_email}
   password              {'1a' + Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    first_name_zenkaku    {"山田"}
    last_name_zenkaku     {"太郎"}
    first_name_furigana   {"ヤマダ"}
    last_name_furigana    {"タロウ"}
    birth_date            {"1989-04-14"}           
  end
end