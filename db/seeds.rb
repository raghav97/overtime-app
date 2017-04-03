@employee = Employee.create(first_name: "Raghav", last_name: "Vc", email: "vc.raghav@gmail.com", password: "password", password_confirmation: "password", phone: "9600129789")

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", user_id: @employee.id, overtime_request: 2.5)
end

puts "A 100 posts have been created"

puts "3 audit logs have been created"

AdminUser.create(first_name: "Admin", last_name: "Vc", email: "giri@gmail.com", password: "password", password_confirmation: "password", phone: "9600129789")

@employee = Employee.create(first_name: "Tester", last_name: "Vc", email: "test@gmail.com", password: "password", password_confirmation: "password", phone: "9600129789")