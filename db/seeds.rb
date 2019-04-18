#users
User.count
User.destroy_all
Restaurant.destroy_all
Review.destroy_all

#users
sam = User.create(name: "Sam")
ana = User.create(name: "Ana")




#restaurants
chipotle = Restaurant.create(name: "Chipotle", cuisine: "Mexican", location: "Manhattan, NY")
burgerking = Restaurant.create(name: "Burger King", cuisine: "Fast", location: "Manhattan, NY")
mcdonalds = Restaurant.create(name: "McDonalds", cuisine: "Fast", location: "Manhattan, NY")
chick = Restaurant.create(name: "Chick-Fil-A", cuisine:"Fast", location: "Manhattan, NY")
dominos = Restaurant.create(name: "Dominos", cuisine: "Fast", location: "Manhattan, NY")


Review.create(user_id: sam.id, restaurant_id: dominos.id, content: "Spicy Goodness", rating:5)
Review.create(user_id: ana.id, restaurant_id: chick.id, content: "Fresh Chicken", rating:4)
Review.create(user_id: sam.id, restaurant_id: burgerking.id, content: "Whopper isn't the same", rating:2)
Review.create(user_id: ana.id, restaurant_id: mcdonalds.id, content: "Disgusting", rating:1)



