class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_current_buyer

  private
  def fetch_current_buyer
    # Check if there's someone logged in whose data we need to load for them.
    if session[:buyer_id].present?
      # .find_by is safer than .find for non-existent IDs because it won't throw an error.
      @current_buyer = Buyer.find_by :id => session[:buyer_id]
      # Stop trying to log this buyer_id in if we can't find them in the database.
      session[:buyer_id] = nil unless @current_buyer.present?
    end
  end

end
