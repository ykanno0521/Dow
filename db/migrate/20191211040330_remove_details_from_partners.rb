class RemoveDetailsFromPartners < ActiveRecord::Migration[5.2]
  def change
    remove_column :partners, :rabies_vaccine, :date
    remove_column :partners, :mixed_vaccine, :date
  end
end