puts 'Start inserting seed "comments" ...'
Post.all.each do |post|
  user = User.all.sample
  comment = user.comments.create!(
    body: Faker::Hacker.say_something_smart,
    post_id: post.id,
    user_id: user.id
  )
  puts "\"comment-#{comment.id}\" has created!"
end
