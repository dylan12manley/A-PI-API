require 'rails_helper'

describe Destination do
  it { should have_many(:reviews) }
  it 'is private by default' do
    destination = FactoryBot.create(:destination)
    destination.country.should eq 'Canada'
  end
end
