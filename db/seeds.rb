# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Venue.destroy_all
MidwayParticipant.destroy_all
Midway.destroy_all
Friendship.destroy_all
User.destroy_all


puts "Creating users..."

userphoto1 = URI.open('https://images.pexels.com/photos/1484794/pexels-photo-1484794.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
user1 = User.create!(first_name: 'John', last_name: 'Knight', email: 'john@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', location: '130 Liverpool Road, N1 1LA, London UK', username: 'jknight')
user1.photo.attach(io: userphoto1, filename: 'user1.png',content_type: 'image/png')

userphoto2 = URI.open('https://images.pexels.com/photos/1389994/pexels-photo-1389994.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
user2 = User.create!(first_name: 'Jane', last_name: 'Smith', email: 'jane@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', location: '166 Putney High Street, SW15 1RS, London UK', username: 'jsmith')
user2.photo.attach(io: userphoto2, filename: 'user2.png',content_type: 'image/png')

userphoto3 = URI.open('https://images.pexels.com/photos/2078265/pexels-photo-2078265.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
user3 = User.create!(first_name: 'Nick', last_name: 'Schmitt', email: 'nicolas@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', location: '66 Pembroke Road, London UK', username: 'nschmitt')
user3.photo.attach(io: userphoto3, filename: 'user3.png',content_type: 'image/png')

userphoto4 = URI.open('https://images.pexels.com/photos/1071812/pexels-photo-1071812.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
user4 = User.create!(first_name: 'Will', last_name: 'Handling', email: 'will@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', location: '26 George Street, London UK', username: 'whandling')
user4.photo.attach(io: userphoto4, filename: 'user4.png',content_type: 'image/png')

userphoto5 = URI.open('https://images.pexels.com/photos/937453/pexels-photo-937453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
user5 = User.create!(first_name: 'Alice', last_name: 'Rivera', email: 'alice@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', location: '4 Laurel Rd, SW13 0EE, London UK', username: 'arivera')
user5.photo.attach(io: userphoto5, filename: 'user5.png',content_type: 'image/png')

userphoto6 = URI.open('https://images.pexels.com/photos/1771383/pexels-photo-1771383.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
user6 = User.create!(first_name: 'Juan', last_name: 'Lopez', email: 'juan@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', location: '171 Queen Street, London UK', username: 'jlopez')
user6.photo.attach(io: userphoto6, filename: 'user6.png',content_type: 'image/png')

userphoto7 = URI.open('https://images.pexels.com/photos/3970083/pexels-photo-3970083.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
user7 = User.create!(first_name: 'Lloyd', last_name: 'Key', email: 'lloyd@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', location: '641 Victoria Road, HA4 0LN, London UK', username: 'lkey')
user7.photo.attach(io: userphoto7, filename: 'user7.png',content_type: 'image/png')

userphoto8 = URI.open('https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260')
user8 = User.create!(first_name: 'Mitch', last_name: 'Jones', email: 'mitch@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', location: '52 The Grove, London UK', username: 'mjones')
user8.photo.attach(io: userphoto8, filename: 'user8.png',content_type: 'image/png')

userphoto9 = URI.open('https://images.pexels.com/photos/2709388/pexels-photo-2709388.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
user9 = User.create!(first_name: 'Sara', last_name: 'Walters', email: 'sara@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', location: '69 Grange Road, London UK', username: 'swalters')
user9.photo.attach(io: userphoto9, filename: 'user9.png',content_type: 'image/png')

userphoto10 = URI.open('https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
user10 = User.create!(first_name: 'Harry', last_name: 'Williams', email: 'harry@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', location: '73 Greatdown Rd, W7 1JR, London UK', username: 'hwilliams')
user10.photo.attach(io: userphoto10, filename: 'user10.png',content_type: 'image/png')

friendship1 = Friendship.create!(user: user1, friend: user2)
friendship2 = Friendship.create!(user: user3, friend: user1)
friendship3 = Friendship.create!(user: user3, friend: user6)
friendship4 = Friendship.create!(user: user5, friend: user10)
friendship5 = Friendship.create!(user: user9, friend: user8)
friendship6 = Friendship.create!(user: user6, friend: user2)
friendship7 = Friendship.create!(user: user10, friend: user7, confirmed: true)
friendship8 = Friendship.create!(user: user5, friend: user4)
friendship9 = Friendship.create!(user: user4, friend: user9)
friendship10 = Friendship.create!(user: user8, friend: user7)
friendship11 = Friendship.create!(user: user10, friend: user9, confirmed: true)
friendship12 = Friendship.create!(user: user10, friend: user3, confirmed: true)
friendship12 = Friendship.create!(user: user10, friend: user1, confirmed: true)
friendship12 = Friendship.create!(user: user10, friend: user2, confirmed: true)

venue1 = Venue.create!(name: "Spring", address: "Lancaster Pl, London WC2R 1LA", photo_url: "https://lh5.googleusercontent.com/p/AF1QipPHXnPGDClY5RY8PXXq4xpOSN6hBPqPo6jR97wB=w203-h152-k-no", lat:"51.509865",lng:"-0.118092")


dates = ["Thu, 01 Dec 2020 12:44:00 UTC +00:00", "Wed, 25 Nov 2020 09:35:00 UTC +00:00", "Mon 23 Nov 2020 15:45:00 UTC +00:00", "Thu, 15 Oct 2020 18:10:00 UTC +00:00"]


30.times do
  creators = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10]
  mcreator = creators.sample
  # users wil be an array of the users friends
  users = []

  friends_array = mcreator.friends
  friends_array.each do |friend|
    # Since user can be under either friend or user ID, check which id is holding the creators ID
    if friend.user_id == mcreator.id
      users << User.find(friend.friend_id)
    else
      users << User.find(friend.user_id)
    end
  end

  m = Midway.new( midpoint: "51.509865,-0.118092", user: mcreator)
  m.venue = venue1
  m.future_datetime = dates.sample
  m.save!
  MidwayParticipant.create!( midway:m ,user:mcreator )

  users.each do |user|
    MidwayParticipant.create!( midway: m, user: user )
  end
end
