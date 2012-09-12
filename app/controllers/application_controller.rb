class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_login
		if session[:user_id].nil?
			flash[:error] = "You must be logged in to do that."
			redirect_to :controller => :static, :action => :index
		end
	end
end
