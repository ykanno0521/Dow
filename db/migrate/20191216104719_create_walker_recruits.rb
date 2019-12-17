class CreateWalkerRecruits < ActiveRecord::Migration[5.2]
  def change
    create_table :walker_recruits do |t|
      t.references :walker,  index: true, foreign_key: true
      t.references :recruit,  index: true, foreign_key: true
      t.integer :flag, null: false, default: 0
      t.timestamps
    end
  end
end
