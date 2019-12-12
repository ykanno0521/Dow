class CreatePartners < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.integer :user_id, null: false
      t.string :dog_breed, null: false
      t.string :image_id
      t.string :name, null: false
      t.date :birthday, null: false
      t.string :gender, null: false
      t.integer :weight, null: false
      t.string :character
      t.string :weak
      t.date :rabies_vaccine, null: false
      t.date :mixed_vaccine, null: false
      t.integer :delete_flag, null: false, default: 0
      t.timestamps
    end
  end
end
