class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :guest_id
      t.integer :group_id
    end
  end
end
