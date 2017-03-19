FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end
  factory :user do
    first_name "Raghav"
    last_name "Vc"
    email { generate :email }
    password "hello@123"
    password_confirmation "hello@123"
    phone "1234567890"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Giridhat"
    last_name "Vc"
    email { generate :email }
    password "hello@123"
    password_confirmation "hello@123"
    phone "1234567890"
  end

  factory :non_authorized_user, class: "User" do
    first_name "Non authorized"
    last_name "User"
    email { generate :email }
    password "hello@123"
    password_confirmation "hello@123"
    phone "1234567890"
  end
end