class AddWeddingDateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :users, :string
    add_column :users, :wedding_date, :date
  end
end
