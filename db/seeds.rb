tgif = Restaurant.create(name: "TGIF")
chipotle = Restaurant.create(name: "Chipotle")


sam = Customer.create(first_name: "Sam", last_name: "Levine")
sally = Customer.create(first_name: "Sally", last_name: "Gregory")
samg = Customer.create(first_name: "Sam", last_name: "Gregory")


r1= Review.create(restaurant: tgif, customer: sally, rating: 3,content: "It was okay")


r2 = Review.create(restaurant: tgif, customer: sam, rating: 2,content: "meh")
r3 = Review.create(restaurant: chipotle, customer: sally, rating: 3,content: "perfect")
r4 = Review.create(restaurant: chipotle, customer: samg, rating: 4,content: "great")
r5 = Review.create(restaurant: tgif, customer: sam, rating: 5,content: "better this time")
