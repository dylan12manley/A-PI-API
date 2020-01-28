class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
  end

  def generate_destinations
    20.times do |i|
      destination = Destination.create!(
        country: Faker::WorldCup.team,
        city: Faker::Nation.capital_city,
        spot: Faker::House.room
      )
      puts "Destination #{i}: Country is #{destination.country} and city is '#{destination.city}, and spot is '#{destination.spot}'."
    end
  end
end

Seed.begin
