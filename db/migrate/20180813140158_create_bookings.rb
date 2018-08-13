class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :equipment, foreign_key: true
      t.date :starts_at
      t.date :ends_at
      t.string :status, default: "pending", null: false

      t.timestamps
    end
  end
end
