class Member < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :bio, :year
end
