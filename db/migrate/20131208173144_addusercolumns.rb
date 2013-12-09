class Addusercolumns < ActiveRecord::Migration
  def change
  	change_table(:rsvps) do |t|
		t.integer :user_id
	end

	change_table(:guests) do |t|
		t.integer :user_id
	end

	change_table(:groups) do |t|
		t.integer :user_id
	end

	change_table(:memberships) do |t|
		t.integer :user_id
	end
	
  end
end
