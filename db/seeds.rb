# Quote.destroy_all
#
# 20.times do |i|
#   Quote.create!(author: Faker::Book.author, content: Faker::ChuckNorris.fact)
# end
#
# p "Create #{Quote.count} quotes."

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_quotes
  end

  def generate_quotes
    20.times do |i|
      author =
      quote = Quote.create!(
        author: Faker::Book.author,
        content: Faker::ChuckNorris.fact
      )
      puts "Quote #{i}: Author is #{quote.author} and quotation is '#{quote.content}'."
    end
  end
end

Seed.begin
