user = User.create!(
  username: "sunny",
  email: "sunny@day.com",
  password: "go",
  password_confirmation: "go"
)

Destination.create(
  city: "Rome",
  country: "Italy",
  currency: "euro",
  language: "italian",
  image_url: "https://s3-us-west-2.amazonaws.com/weasel-dev/italy-1411360_1280.jpg",
  user_id: user.id
)
Destination.create(
  city: "London",
  country: "England",
  currency: "pound",
  language: "english",
  image_url: "https://s3-us-west-2.amazonaws.com/weasel-dev/london-140785_1280.jpg",
  user_id: user.id
)
Destination.create(
  city: "New York",
  country: "United States",
  currency: "dollar", language: "english",
  image_url: "https://s3-us-west-2.amazonaws.com/weasel-dev/new-york-668616_1280.jpg",
  user_id: user.id
)
Destination.create(
  city: "Berlin",
  country: "Germany",
  currency: "euro",
  language: "german",
  image_url: "https://s3-us-west-2.amazonaws.com/weasel-dev/berlin-979715_1280.jpg",
  user_id: user.id
)
Destination.create(
  city: "San Francisco",
  country: "United States",
  currency: "dollar",
  language: "english",
  image_url: "https://s3-us-west-2.amazonaws.com/weasel-dev/golden-gate-bridge-388917_1280.jpg",
  user_id: user.id
)
Destination.create(
  city: "Paris",
  country: "France",
  currency: "euro",
  language: "french",
  image_url: "https://s3-us-west-2.amazonaws.com/weasel-dev/eiffel-tower-1209943_1280.jpg",
  user_id: user.id
)
Destination.create(
  city: "Seattle",
  country: "United States",
  currency: "dollar",
  language: "english",
  image_url: "https://s3-us-west-2.amazonaws.com/weasel-dev/seattle-870282_1280.jpg",
  user_id: user.id
)
Destination.create(
  city: "Washington DC",
  country: "United States",
  currency: "dollar",
  language: "english",
  image_url: "https://s3-us-west-2.amazonaws.com/weasel-dev/washington-monument-1627184_1280.jpg",
  user_id: user.id
)

10.times do
  puts user
  Insight.create!(
    user_id: user.id,
    destination_id: Destination.all.sample.id,
    body: ["This is an awesome place to visit!", "This is a real pearl!", "Fantastic Restaurants", "People are lovely", "I want to move here!"].sample
  )
end
