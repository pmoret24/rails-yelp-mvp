# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  # french = Restaurant.create([{ name: 'Bonjour' }, { address: '123 street' }, { phone_number: '9995020' }, { category: '
  # french' }])

  # Review.create(content: 'Great place!', rating: 5, restaurant: french)

  restaurants_data = [
    {      name: 'Bonjour',
      address: '123 French Street',
      phone_number: '999502011',
      category: 'french',
      reviews: [
      { content: 'Delicious escargots!', rating: 5 },
      { content: 'Fine dining at its best.', rating: 4 }]},

      {      name: 'Ciao Bella',
        address: '456 Italian Ave',
        phone_number: '999502022',
        category: 'italian',
        reviews: [
        { content: 'Loved the spaghetti!', rating: 4 },
        { content: 'Authentic tiramisu.', rating: 5 }]},

      { name: 'Konnichiwa',
        address: '789 Japanese Blvd',
        phone_number: '999502033',
        category: 'japanese',
        reviews: [
        { content: 'Sushi was fresh.', rating: 5 },
        { content: 'Impressive teppanyaki.', rating: 4 }]},

      { name: 'Hola Amigo',
        address: '101 Spanish St',
        phone_number: '999502044',
        category: 'chinese',
        reviews: [
        { content: 'Paella was flavorful!', rating: 5 },
        { content: 'Warm and cozy ambiance.', rating: 4 }]},

      { name: 'Hallo',
        address: '112 German Rd',
        phone_number: '999502055',
        category: 'belgian',
        reviews: [
        { content: 'Schnitzels were crispy.', rating: 5 },
        { content: 'Great variety of beers.', rating: 4 }]}]

      restaurants_data.each do |restaurant_data|
      restaurant = Restaurant.create!(
      name: restaurant_data[:name],
      address: restaurant_data[:address],
      phone_number: restaurant_data[:phone_number],
      category: restaurant_data[:category])

      restaurant_data[:reviews].each do |review_data|
      Review.create!(
      content: review_data[:content],
      rating: review_data[:rating],
      restaurant: restaurant
      )
      end
      end
