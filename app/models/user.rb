class User < ActiveRecord::Base
	has_many :photos
  # attr_accessible :title, :body
  attr_accessible :first_name, :last_name, :year, :bio

  validates :first_name, :last_name, :year, :presence => true

  def full_name
  	self.first_name + " " + self.last_name
  end

  def img_file 
  	if self.photos.empty?
  		# default image path
  		"defaultRaas.jpg"
  	else
  		self.photos.first.filename
  	end
  end
end
