FactoryGirl.define do
  factory :user do |f|
    f.email "bob@bob.com"
    f.password "senhafacil"
    f.password_confirmation "senhafacil"
    f.first_name "Bob"
    f.last_name "Bob"
  end
end
