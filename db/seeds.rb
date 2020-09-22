print "Creating Users..."
User.destroy_all

u1 = User.create!(
  name: 'Ben Luck',
  email: 'benl@ga.com',
  password: 'chicken'
)

u2 = User.create!(
  name: 'Chris Stevo',
  email: 'stevo@ga.com',
  password: 'chicken'
)

u3 = User.create!(
  name: 'Luke Hammertime',
  email: 'hammertime@ga.com',
  password: 'chicken'
)

puts "Created #{ User.count } users."
