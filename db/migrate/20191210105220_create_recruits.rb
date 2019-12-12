class CreateRecruits < ActiveRecord::Migration[5.2]
  def change
    create_table :recruits do |t|
      t.integer :user_id
      t.integer :walker_id
      t.integer :partner_id
      t.string :offer_date, null: false
      t.string :start_time, null: false
      t.string :finish_time, null: false
      t.string :text
      t.integer :status, null: false, default: 0
      t.integer :delete_flag, null: false, default: 0
      t.timestamps
    end
  end
end
