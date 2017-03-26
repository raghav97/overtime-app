@user = User.create(first_name: "Raghav", last_name: "Vc", email: "vc.raghav@gmail.com", password: "password", password_confirmation: "password", phone: "9600129789")


100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "A 100 posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
end

puts "A 100 audit logs have been created"

AdminUser.create(first_name: "Admin", last_name: "Vc", email: "giri@gmail.com", password: "password", password_confirmation: "password", phone: "9600129789")

@user = User.create(first_name: "Tester", last_name: "Vc", email: "test@gmail.com", password: "password", password_confirmation: "password", phone: "9600129789")