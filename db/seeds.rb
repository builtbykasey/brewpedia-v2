require 'faker'

10.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'helloworld',
    confirmed_at: Time.now
  )
end
users = User.all

100.times do
  wiki = Wiki.create!(
    user: users.sample,
    blend_name: Faker::Coffee.blend_name,
    origin: Faker::Coffee.origin,
    variety: Faker::Coffee.variety,
    description: Faker::Coffee.notes,
    intensifier: Faker::Coffee.intensifier,
    notes: 'Strong emphasis, aka bold, with **asterisks** or __underscores__.',
    private: false
  )
end

wikis = Wiki.all

admin = User.create!(
  name: 'Admin User',
  email: 'admin@example.com',
  password: 'password',
  confirmed_at: Time.now,
  role: 'admin'
)

premium = User.create!(
  name: 'Premium User',
  email: 'premium@example.com',
  password: 'password',
  confirmed_at: Time.now,
  role: 'premium'
)

premium2 = User.create!(
  name: 'Premium User2',
  email: 'premium2@example.com',
  password: 'password',
  confirmed_at: Time.now,
  role: 'premium'
)

premium3 = User.create!(
  name: 'Premium User3',
  email: 'premium3@example.com',
  password: 'password',
  confirmed_at: Time.now,
  role: 'premium'
)

standard = User.create!(
  name: 'Standard User',
  email: 'standard@example.com',
  password: 'password',
  confirmed_at: Time.now,
  role: 'standard'
)

standard2 = User.create!(
  name: 'Standard User2',
  email: 'standard2@example.com',
  password: 'password',
  confirmed_at: Time.now,
  role: 'standard'
)

standard3 = User.create!(
  name: 'Standard User3',
  email: 'standard3@example.com',
  password: 'password',
  confirmed_at: Time.now,
  role: 'standard'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} posts created"
