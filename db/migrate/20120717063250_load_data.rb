class LoadData < ActiveRecord::Migration
  def up
  	pandey = Member.new(:name => "Rahul Pandey", :year => "2013", :bio => "I like to dance and smile and listen!")
  	pandey.save(:validate => false)
  end

  def down
  	Member.delete_all
  end
end
