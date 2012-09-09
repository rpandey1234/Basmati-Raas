class UsersController < ApplicationController

	# show all users
	def index
		puts "hit"
	end

	# Show member of specific id
	def show 
		@user = Users.find_by_id(params[:id])
	end

	def new

	end

	def create

	end

	def edit

	end

	def update
	end

	def destroy
	end

end
