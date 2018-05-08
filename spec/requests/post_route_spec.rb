require 'rails_helper'

describe "post a store route", :type => :request do

  before do
    post '/stores', params: { :store_name => 'test_store_name', :state => 'test_state', :city => 'test_city', :address_line_2 => 'test_address_line2', :description => 'test_description', :website => 'test_website', :phone_number => 'test_phone_number', :review => 'test_review', :image => 'test_image', :lat_long => 'test_lat_long' }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['store_name']).to eq('test_store_name')
  end

  it 'returns the quote content' do
    expect(JSON.parse(response.body)['description']).to eq('test_description')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
