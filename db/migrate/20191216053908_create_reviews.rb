class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :recruit_id, null: false
      t.string  :title, null: false
      t.text    :content, null: false
      t.float  :satisfaction
      t.integer :delete_flag, default: 0
      t.timestamps
    end
  end
end
