class AddProfilePic < ActiveRecord::Migration
  def up
  	add_column :photos, :description, :string
  	add_column :photos, :location, :string
  	add_column :photos, :profile, :boolean
  	remove_column :photos, :date_time
  end

  def down
    add_column :photos, :date_time, :timestamp
  	remove_column :photos, :profile
  	remove_column :photos, :description
  	remove_column :photos, :location
  end
end
