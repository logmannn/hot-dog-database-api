require 'rails_helper'
require 'factories'

describe "get all quotes route", :type => :request do
  let!(:quotes) { FactoryBot.create_list(:quote, 20)}

  # shorthand for before do / end
  before { get '/quotes'}

  it 'returns all quotes' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
