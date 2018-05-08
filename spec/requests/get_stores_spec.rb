require 'rails_helper'
require 'factories'

describe "get all stores route", :type => :request do
  let!(:stores) { FactoryBot.create_list(:store, 20)}

  # shorthand for before do / end
  before { get '/stores'}

  it 'returns all stores' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
