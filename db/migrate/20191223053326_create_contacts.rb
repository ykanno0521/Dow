class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :title
      t.integer :user_id
      t.integer :walker_id
      t.text :content
      t.text :reply
      t.timestamps
    end
  end
end
