FactoryBot.define do
  factory(:store) do
    store_name (Faker::Zelda.location)
    state (Faker::Team.state)
    city (Faker::Hobbit.location)
    address_line_2 (Faker::HarryPotter.location)
    description (Faker::HowIMetYourMother.quote)
    website (Faker::HowIMetYourMother.quote)
    phone_number (Faker::PhoneNumber.phone_number)
    review (Faker::MostInterestingManInTheWorld.quote)
    image (Faker::LoremPixel.image("50x60"))
    lat_long (Faker::Address.latitude)
  end
end
