require 'rails_helper'

RSpec.describe 'BestBuyService', type: :service do
  it 'should be able to find a specific store' do
    service = BestBuyService.new
    response = service.find_store(2953)
    expect(response.stores.first.name).to eq("Flatiron Crossing Mall ")
  end
end
