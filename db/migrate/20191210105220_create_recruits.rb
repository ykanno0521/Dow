class CreateRecruits < ActiveRecord::Migration[5.2]
  def change
    create_table :recruits do |t|
      t.integer :user_id
      t.integer :walker_id
      t.datetime :offer_date, null: false
      t.time :start_time, null: false
      t.time :finish_time, null: false
      t.string :text, null: false
      t.integer :status, null: false, default: 0
      t.integer :delete_flag, null: false, default: 0
      t.timestamps
    end
  end
end
