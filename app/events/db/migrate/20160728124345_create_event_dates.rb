class CreateEventDates < ActiveRecord::Migration
  def change
    create_table :event_dates do |t|
      t.integer :event_id
      t.datetime :event_datetime
      t.float :event_price

      t.timestamps null: false
    end
  end
end
