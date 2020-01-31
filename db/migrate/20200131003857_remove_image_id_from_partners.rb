class RemoveImageIdFromPartners < ActiveRecord::Migration[5.2]
  def change
    remove_column :partners, :image_id, :string
  end
end
