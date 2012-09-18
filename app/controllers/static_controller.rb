class StaticController < ApplicationController
  def index
  end

  def history
  end

  def awards
  end

  def sponsorship
  end

  def login
  	puts params[:user]
  	if params[:user]
  		session[:username] = params[:user]
  		redirect_to :controller => :users and return
  	end
  	return_url = "#{request.protocol}#{request.host_with_port}#{request.fullpath}"
  	redirect_to "http://www.stanford.edu/~rkpandey/cgi-bin/brprotected/webauth?u=" + URI.encode(return_url)
  end

  def logout
  	session[:username] = nil
  	redirect_to :controller => :static
  end

  def called_url

  end

  def team
    
  end
end
