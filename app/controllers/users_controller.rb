class UsersController < ApplicationController
	before_filter :require_login, :only=>[:destroy, :create]
	
	# show all users
	def index
		@users = User.all
	end

	# return an HTML form for creating a new user
	def new
	end

	# POST: create a new user
	def create
		@user = User.new(params[:user])
		if @user.valid?
			@user.save
			flash[:notice] = "Successfully created new member!"
			redirect_to :action => :show, :id => @user.id
		else
			flash[:alert] = "There was an error in validating the new member"
			render :action => :new
		end
	end

	# Show member of specific id
	def show 
		@user = User.find_by_id(params[:id])
	end

	# return an HTML form for editing a user
	def edit
		@user = User.find_by_id(params[:id])
		@photos = Photo.find_all_by_user_id(params[:id])
	end

	# PUT: update a specific user
	def update
		@user = User.find_by_id(params[:id])
		if @user.update_attributes(params[:user])
			flash[:notice] = "Updated member!"
			redirect_to :action => :show, :id => @user.id
		else
			flash[:alert] = "Unable to update member. Try again"
			redirect_to :action => :edit
		end
	end

	# DELETE: delete a specific user
	def destroy
		User.destroy(params[:id])
		flash[:notice] = "Deleted member!"
		redirect_to :action => :index
	end

end
