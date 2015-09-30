# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tweet_count = [1, 3, 5, 7]

10.times do
  user = User.new({
    first_name: Faker::Name.first_name
    last_name:  Faker::Name.last_name
    username:   Faker::Internet.user_name
    password_digest: 'password'
    })

  tweet_count.sample times do
    tweet = Tweet.new({
      message: Faker::Hacker.say_something_smart
      })
  end

  user.save!

end
