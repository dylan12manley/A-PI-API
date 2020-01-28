require 'rails_helper'

describe Review do
  it { should belong_to(:destination) }

  it 'something' do
    destination = FactoryBot.create(:destination)
    review = FactoryBot.create(:review, :destination_id => destination.id)
    expect(review.body).to(eq('Yupper dooooooo, it was great. Lots of spying.'))
  end
end
