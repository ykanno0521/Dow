class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :recruit_id, null: false
      t.integer :user_id, null: false
      t.integer :walker_id, null: false
      t.string  :title, null: false
      t.text    :content, null: false
      t.float  :satisfaction, null: false
      t.timestamps
    end
  end
end
