class ApplicationController < ActionController::API

  include Response

  # failed show / get
  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ message: exception.message }, :not_found)
  end

  # failed update / put or failed create / post 
  rescue_from ActiveRecord::RecordInvalid do |exception|
    json_response({ message: exception.message }, :partial_content)
  end


end
