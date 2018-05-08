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
      store = Store.create!(
        store_name: Faker::Zelda.location,
        state: Faker::Team.state,
        city: Faker::Hobbit.location,
        address_line_2: Faker::HarryPotter.location,
        description: Faker::HowIMetYourMother.quote,
        website: Faker::SiliconValley.url,
        phone_number: Faker::PhoneNumber.phone_number,
        image: Faker::LoremPixel.image("50x60"),
        lat_long: Faker::Address.latitude
      )
      5.times do |index|
        store.reviews.create!(
          author: Faker::Name.unique.name,
          review: Faker::Lorem.sentences(4).join(" "),
          rating: rand(0..5)
        )
        puts "review created"
      end
      puts "Store #{i}: Store with named #{store.store_name} was created}."
    end
  end

  def generate_reviews
    20.times do |i|
      5.times do |index|
        review = Review.create!(
          author: Faker::Name.unique.name,
          review: Faker::Lorem.sentences(4).join(" "),
          rating: rand(0..5),
          store_id: i
        )
        puts "review created"
      end
    end
  end
end

Seed.begin
