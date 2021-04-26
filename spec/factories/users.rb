FactoryBot.define do
  factory :user do
    email { 'masaya@gmail.com' }
    nickname { 'マサヤ' }
    password {"abc123"}
    password_confirmation  { password }
    last_name {"高阪"}
    first_name {"賢哉"}
    ruby_last_name {"コウ"}
    ruby_first_name {"サカ"}
    birthday {"2000-1-31"}
  end
end