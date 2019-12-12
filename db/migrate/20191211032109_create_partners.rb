class CreatePartners < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.integer :user_id, null: false
      t.string :dog_breed
      t.string :image_id
      t.string :name, null: false
      t.date :birthday
      t.string :gender, null: false
      t.integer :weight
      t.string :character
      t.date :rabies_vaccine, null: false
      t.date :mixed_vaccine, null: false
      t.integer :delete_flag, null: false, default: 0
      t.timestamps
    end
  end
end
