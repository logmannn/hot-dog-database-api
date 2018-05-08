Store.destroy_all
#
# 20.times do |i|
#   Quote.create!(author: Faker::Book.author, content: Faker::ChuckNorris.fact)
# end
#
# p "Create #{Quote.count} quotes."

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_stores
  end
#       author =
      # quote = Quote
  def generate_stores
    20.times do |i|
      store_name =
      store = Store.create!(
        store_name: Faker::Zelda.location,
        state: Faker::Team.state,
        city: Faker::Hobbit.location,
        address_line_2: Faker::HarryPotter.location,
        description: Faker::HowIMetYourMother.quote,
        website: Faker::SiliconValley.url,
        phone_number: Faker::PhoneNumber.phone_number,
        review: Faker::MostInterestingManInTheWorld.quote,
        image: Faker::LoremPixel.image("50x60"),
        lat_long: Faker::Address.latitude
      )
      puts "Store #{i}: Store with named #{store.store_name} was created}."
    end
  end
end

Seed.begin
