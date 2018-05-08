require 'pry'

class StoresController < ApplicationController
  TOKEN = "secret"

  before_action :authenticate, excerpt: [ :index ]
  def index
    query = params[:query]
    store_name = params[:store_name]
    state = params[:state]
    city = params[:city]
    address_line_2 = params[:address_line_2]
    description = params[:description]
    website = params[:website]
    phone_number = params[:phone_number]
    review = params[:review]
    image = params[:image]
    lat_long = params[:lat_long]

    if query
      @stores = Store.search_content(query)
      json_response(@stores)
    else
      @store_name = Store.search_store(store_name)
      json_response(@store_name)
    end
  end

  def show
    @store = Store.find(params[:id])
    json_response(@store)
  end

  def create
    @store = Store.create!(store_params)
    json_response(@store, :created)
  end

  def update
    @store = Store.find(params[:id])
    if @store.update!(store_params)
      render status: 200, json: {
      message: "Your store has been updated successfully."
      }
    end
  end

  def destroy
    @store = Store.find(params[:id])
    if @store.destroy
      render status: 200, json: {
      message: "Your store has been deleted successfully."
      }
    end
  end

private

  def store_params
    params.permit(:store_name, :state, :city, :address_line_2, :description, :website, :phone_number, :review, :image, :lat_long)
  end

  def authenticate
    authenticate_or_request_with_http_token do |token, options|
    # Compare the tokens in a time-constant manner, to mitigate
    # timing attacks.
    ActiveSupport::SecurityUtils.secure_compare(token, Token)
    end
  end
end
