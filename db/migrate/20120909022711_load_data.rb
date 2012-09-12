class LoadData < ActiveRecord::Migration
  def up
  	u1 = User.new(:first_name => "Rahul", :last_name => "Pandey", :year => "2013", :bio => "I like to dance and smile and listen!")
  	u1.save(:validate => false)
  	u2 = User.new(:first_name => "Ankita", :last_name => "Patro", :year => "2012", :bio =>"Dancing and singing all the way")
  	u2.save(:validate => false)
  	u3 = User.new(:first_name => "Shilpa", :last_name => "Sethuraman", :year => "2013", :bio =>"Ms. Captain")
  	u3.save(:validate => false)
  end

  def down
  	User.delete_all
  end
end
