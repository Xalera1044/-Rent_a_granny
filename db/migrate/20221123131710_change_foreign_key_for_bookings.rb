class ChangeForeignKeyForBookings < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :grannies_id, :granny_id
    rename_column :bookings, :users_id, :user_id
  end
end
