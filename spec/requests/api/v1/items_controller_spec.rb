require 'rails_helper'
include TestHelper
RSpec.describe Api::V1::ItemsController, type: :request do
  describe "GET#index" do
    it 'returns all existing items' do
      create_list(:item, 2)

      get "/api/v1/items"
      items = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect(2).to eq(items.count)
    end

    describe "POST#create" do
      it 'returns item created' do
      post "/api/v1/items?name=tester&description=tester&image_url=tester"
      expect(response.status).to eq(200)
      item_information = JSON.parse(response.body)
      expect(item_information["name"]).to eq("tester")
    end
  end

    it 'sends a list of one item' do
      create(:item)

      get "/api/v1/items"
      item = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect(1).to eq(item.count)
    end

    it 'returns empty array when there are no existing items' do
      get "/api/v1/items"
      item = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect([]).to eq(item)
    end
  end

  describe "GET#show" do
    it 'returns a single item' do
      item = create(:item)

      get "/api/v1/items/#{item.id}"
      item_information = JSON.parse(response.body)

      expect(response.status).to eq(200)

      expect(item.id).to eq(item_information["id"])
      expect(item.name).to eq(item_information["name"])
    end

    describe "DELETE#destroy" do
      it 'returns a 204' do
        item = create(:item)
        delete "/api/v1/items/1"

        expect(response.status).to eq(204)
      end
    end
  end
end
