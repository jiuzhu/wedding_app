class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.integer :guest_id
      t.integer :food_chicken
      t.integer :food_beef
      t.integer :food_vegetarian
      t.integer :num_guests
    end
  end
end
