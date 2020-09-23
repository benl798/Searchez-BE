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


print "Creating images..."
Image.destroy_all

i1 = Image.create!(
  url: 'https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?',
  unsplash_id: 'm3m-lnR90uM',
  alt_description: 'white car',
  description: 'I shot this while doing a job for a luxury automotive storage facility in Baltimore, MD.',
  location_name: 'Sydney, Australia',
  latitude: -33.801028,
  longitude: 151.198869
)

i2 = Image.create!(
  url: 'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?',
  unsplash_id: '2AovfzYV3rc',
  alt_description: 'blue Chevrolet coupe',
  description: 'My new wheels!',
  location_name: 'Sydney, Australia',
  latitude: -33.808859,
  longitude: 151.184795
)

i3 = Image.create!(
  url: 'https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?',
  unsplash_id: 'oUBjd22gF6w',
  alt_description: 'orange Lamborghini car',
  description: 'My awesome lambo!',
  location_name: 'Sydney, Australia',
  latitude: -33.829732,
 longitude: 151.226791
)

puts "Created #{ Image.count } images."

u1.images << i1
u2.images << i2
u3.images << i3
