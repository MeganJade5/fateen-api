# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = ["Magic 8 ball", "Crystal ball", "Hand reading", "Tarot cards", "Tea leaves", "Horoscopes", "Asparagus tossing", "Other"]

if Category.all.length == 0
    categories.each do |category|
        Category.create(name: category)
        puts "created #{category} category"
    end
end

if User.count == 0
    User.create(username: "ash", name: "Ash", email: "ash@test.com", password: "ketchum", password_confirmation: "ketchum")
    User.create(username: "brock", name: "Brock", email: "brock@test.com", password: "harrison", password_confirmation: "harrison")
end

if Prediction.all.length == 0
    Prediction.create(user_id: 1, category_id: 1, description: "If you jump over the drain, you will have more luck")
    Prediction.create(user_id: 1, category_id: 2, description: "Beware of the chicken in the back of the fridge")
    Prediction.create(user_id: 1, category_id: 3, description: "Your long line represents the long life you will have")
    Prediction.create(user_id: 1, category_id: 4, description: "There will be a four day working week")
    Prediction.create(user_id: 2, category_id: 5, description: "There is a heart in your cup, showing a long lasting love")
    Prediction.create(user_id: 2, category_id: 6, description: "This month will be full of passion projects")
    Prediction.create(user_id: 2, category_id: 7, description: "3 asparagus means 3 dogs")
    Prediction.create(user_id: 2, category_id: 8, description: "We were on a break")
end

