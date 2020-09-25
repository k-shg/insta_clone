puts 'Start inserting seed "users" ...'

user = User.create(
    email: 'a@a.com',
    username: 'aaa',
    password: 'aaaa',
    password_confirmation: 'aaaa'
    )


20.times do
  user = User.create(
      email: Faker::Internet.unique.email,
      username: Faker::Internet.unique.user_name,
      password: 'password',
      password_confirmation: 'password'
      )
  puts "\"#{user.username}\" has created!"
end
