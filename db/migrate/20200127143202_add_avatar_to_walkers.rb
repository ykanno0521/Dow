class AddAvatarToWalkers < ActiveRecord::Migration[5.2]
  def change
    add_column :walkers, :avatar, :string
  end
end
