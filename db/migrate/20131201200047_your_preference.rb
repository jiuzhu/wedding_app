class YourPreference < ActiveRecord::Migration
  def change
  	 change_table(:rsvps) do |t|
      t.string :your_food_preference
      t.string :guest_food_preference
  	end
  end
end