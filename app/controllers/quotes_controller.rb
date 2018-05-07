require 'pry'

class QuotesController < ApplicationController
  def index
    query = params[:query]
    author = params[:author]

    if query 
      @quotes = Quote.search_content(query)
      json_response(@quotes)
    else
      @author = Quote.search_author(author)
      json_response(@author)
    end
  end

  def show
    @quote = Quote.find(params[:id])
    json_response(@quote)
  end

  def create
    @quote = Quote.create!(quote_params)
    json_response(@quote, :created)
  end

  def update
    @quote = Quote.find(params[:id])
    if @quote.update!(quote_params)
      render status: 200, json: {
      message: "Your quote has been updated successfully."
      }
    end
  end

  def destroy
    @quote = Quote.find(params[:id])
    if @quote.destroy
      render status: 200, json: {
      message: "Your quote has been deleted successfully."
      }
    end
  end

private

  def quote_params
    params.permit(:author, :content)
  end
end
