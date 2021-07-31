FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'000000'}
    password_confirmation {password}
    first_name_zenkaku    {"山田"}
    last_name_zenkaku     {"太郎"}
    first_name_furigana   {"ヤマダ"}
    last_name_furigana    {"タロウ"}
    birth_date            {"1989-04-14"}           
  end
end