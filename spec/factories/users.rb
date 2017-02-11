FactoryGirl.define do
  factory :user do
    first_name "Raghav"
    last_name "Vc"
    email "vc.raghav@gmail.com"
    password "hello@123"
    password_confirmation "hello@123"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Giridhat"
    last_name "Vc"
    email "giri@gmail.com"
    password "hello@123"
    password_confirmation "hello@123"
  end
end