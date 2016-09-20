class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  helper_method :bb_services

  def bb_services
    @bb_service ||= BestBuyService.new
  end

end
