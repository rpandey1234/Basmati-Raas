class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
			t.column :user_id,    :integer
      t.column :name,       :string
      t.column :year,       :string
      t.column :bio,       :text
      t.timestamps
    end
  end
end
