class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :volunteer_id
      t.integer :constituent_id
      t.time :start
      t.time :end
      t.integer :volunteer_rating
      t.integer :constituent_rating
      t.string :constituent_comment
      t.string :volunteer_comment
      t.integer :volunteer_confirmation

      t.timestamps null: false
    end
  end
end
