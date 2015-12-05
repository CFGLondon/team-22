class AddPeferencesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :perference_one, :string
    add_column :users, :preference_two, :string
    add_column :users, :preference_three, :string
  end
end
