user = User.create!(
  username: "sunny",
  email: "sunny@day.com",
  password: "go",
  password_confirmation: "go"
)

user_2 = User.create!(
  username: "snowy",
  email: "snowy@day.com",
  password: "go",
  password_confirmation: "go"
)

Destination.create(
  city: "Chicago",
  country: "United States",
  currency: "dollar",
  language: "english",
  image_url: "https://placekitten.com/200/303",
  user_id: user_2.id
)
Destination.create(
  city: "London",
  country: "England",
  currency: "pound",
  language: "english",
  image_url: "https://placekitten.com/200/301",
  user_id: user.id
)
Destination.create(
  city: "New York",
  country: "United States",
  currency: "dollar", language: "english",
  image_url: "https://placekitten.com/200/305",
  user_id: user.id
)
Destination.create(
  city: "Berlin",
  country: "Germany",
  currency: "euro",
  language: "german",
  image_url: "https://placekitten.com/200/307",
  user_id: user.id
)

Destination.create(
  city: "San Francisco",
  country: "United States",
  currency: "dollar",
  language: "english",
  image_url: "https://placekitten.com/200/309",
  user_id: user_2.id
)

Destination.create(
  city: "Paris",
  country: "France",
  currency: "euro",
  language: "french",
  image_url: "https://placekitten.com/200/301",
  user_id: user.id
)

Destination.create(
  city: "Washington DC",
  country: "United States",
  currency: "dollar",
  language: "english",
  image_url: "https://placekitten.com/200/301",
  user_id: user.id
)

10.times do
  Insight.create!(
    user_id: user.id,
    destination_id: user.destinations.sample.id,
    body: ["This is an awesome place to visit!", "This is a real pearl!", "Fantastic Restaurants", "People are lovely", "I want to move here!"].sample
  )
end
