class AddAvatarToPartners < ActiveRecord::Migration[5.2]
  def change
    add_column :partners, :avatar, :string
  end
end
