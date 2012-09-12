class Photo < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date_time, :filename, :user_id

  def upload img
		name = img.original_filename
		self.filename = name
		directory = "app/assets/images/"
	  path = File.join(directory, name)
		File.open(path, "wb") { |f| f.write(img.read) }
	end

	def f_time
		t = self.date_time
		t.getlocal.strftime("%A, %B %d, %Y %I:%M:%S %p") 
	end

end
