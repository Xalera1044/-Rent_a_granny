class ChangeConfirmtoBookings < ActiveRecord::Migration[7.0]
  def change
    change_column(:bookings, :confirm, :string, default: "pending")
  end
end
