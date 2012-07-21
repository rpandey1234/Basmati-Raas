class MemberController < ApplicationController
	def index
		
	end

	def members
		@users = Member.all
	end

	def awards

	end

	def history

	end

	def sponsorship
	end
end
