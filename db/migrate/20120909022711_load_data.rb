class LoadData < ActiveRecord::Migration
  def up
  	pandey = Users.new(:first_name => "Rahul", :last_name => "Pandey", :year => "2013", :bio => "I like to dance and smile and listen!")
  	pandey.save(:validate => false)
  	doshi = Users.new(:first_name => "Tulsee", :last_name => "Doshi", :year => "2015", :bio =>"Dancing and singing all the way")
  	doshi.save(:validate => false)
  end

  def down
  	Users.delete_all
  end
end
