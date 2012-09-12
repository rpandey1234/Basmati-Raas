class PhotosController < ApplicationController
	before_filter :require_login, :only=>[:create, :destroy]
	#Get all photos for this user
	def index
		@user = User.find(params[:user_id])
		@photos = Photo.find_all_by_user_id(params[:user_id])
	end

	# return an HTML form for creating a new user
	def new
	end

	# POST: create a new photo associated with the user
	def create
		puts params
		@user = User.find_by_id(params[:user_id])
		@photo = Photo.new
		if params[:photo] then
			@photo.upload(params[:photo][:image])
      @photo.user = @user
      @photo.save
			flash[:notice] = "File uploaded!"
			redirect_to :controller => "users", :action => "edit", :id => @user.id
		else
			flash[:alert] = "Unable to upload that file. Try again."
      redirect_to :controller => "users", :action => "edit", :id => @user.id 
		end
	end

		# Show photo of specific id
	def show 
		
	end

	def destroy
	end

end