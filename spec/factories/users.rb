FactoryBot.define do
  factory :user do
    email { Faker::Internet.free_email}
    nickname { Faker::Name.last_name }
    password {'1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation  { password }
    last_name {"高阪"}
    first_name {"賢哉"}
    ruby_last_name {"コウ"}
    ruby_first_name {"サカ"}
    birthday {"2000-1-31"}
  end
end