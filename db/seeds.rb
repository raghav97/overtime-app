@user = User.create(first_name: "Raghav", last_name: "Vc", email: "vc.raghav@gmail.com", password: "password", password_confirmation: "password")


100.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "A 100 posts have been created"

AdminUser.create(first_name: "Admin", last_name: "Vc", email: "giri@gmail.com", password: "password", password_confirmation: "password")

@user = User.create(first_name: "Tester", last_name: "Vc", email: "test@gmail.com", password: "password", password_confirmation: "password")