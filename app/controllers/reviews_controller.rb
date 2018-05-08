require 'pry'

class ReviewsController < ApplicationController

  def create
    @review = Review.create!(review_params)
    json_response(@review, :created)
  end

private

  def review_params
    params.permit(:review, :store_id, :author, :rating)
  end

end
