# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

Item.create([
  { "category_id": 1,
    "title": "Road Bike",
    "body": "Black",
    "location": "Downtown Boston",
    "address": "125 Summer St. Boston, MA"
  },
  { "category_id": 2,
    "title": "Harry Potter",
    "body": "By JK Rowling",
    "location": "Kendall Square",
    "address": "125 Something. Cambridge, MA"
  },
  { "category_id": 3,
    "title": "Dresses",
    "body": "Perfect for the holidays!",
    "location": "Union Square",
    "address": "19 Something. Cambridge, MA"
  }
  ])
