FactoryBot.define do
  factory(:quote) do
    author(Faker::Cat.breed)
    content(Faker::HitchhikersGuideToTheGalaxy.quote)
  end
end
