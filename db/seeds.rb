# class Seed
#
#   def self.begin
#     seed = Seed.new
#     seed.generate_destinations
#   end


  20.times do |i|
    @destination = Destination.create!(
      country: Faker::WorldCup.team,
      city: Faker::Nation.capital_city,
      spot: Faker::House.room
    )
    5.times do
      @destination.reviews.new(pi_rating: rand(5),
      body: Faker::Food.description,
      destination_id: nil)
      @destination.save
    end
  end
  # end

  #     puts "Destination #{i}: Country is #{destination.country} and city is '#{destination.city}, and spot is '#{destination.spot}'."
  #   end

  # Seed.begin
  p "Created #{Review.count} reviews"
