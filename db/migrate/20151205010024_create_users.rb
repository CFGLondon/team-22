class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.inte3ail
      t.string :password
      t.string :phone
      t.date :avaliability_date
      t.time :availability_time
      t.string :referee_name
      t.string :refree_email
      t.string :referee_phone
      t.string :referee_description
      t.string :address
      t.integer :rating
      t.string :gender
      t.string :decription
      t.integer :verification

      t.timestamps null: false
    end
  end
end
