[{name: 'Shubham', email_address: 'shubham@gmail.com', password: '123456'}, {name: 'ravi', email_address: 'ravi@gmail.com', password: '123456'},
{name: 'Vivek', email_address: 'vivek@gmail.com', password: '123456'}].each do |user_hash|
  User.create!(user_hash)
end
puts "Users are created!"

User.all.each do |user|
  random_price = rand(1000..9999)
  user.orders.create!(price: random_price)
end
puts "Orders created!"
