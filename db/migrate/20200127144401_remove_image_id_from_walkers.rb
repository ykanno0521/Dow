class RemoveImageIdFromWalkers < ActiveRecord::Migration[5.2]
  def change
    remove_column :walkers, :image_id, :string
  end
end
