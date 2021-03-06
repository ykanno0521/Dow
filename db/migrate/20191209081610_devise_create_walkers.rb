# frozen_string_literal: true

class DeviseCreateWalkers < ActiveRecord::Migration[5.2]
  def change
    create_table :walkers do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.string :image_id
      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :postcode
      t.string :prefecture
      t.string :city
      t.string :block
      t.string :building
      t.string :phone_number
      t.string :nickname
      t.string :area1
      t.string :area2
      t.string :area3
      t.integer :delete_flag
      t.text :introduction
      t.timestamps null: false
    end

    add_index :walkers, :email,                unique: true
    add_index :walkers, :reset_password_token, unique: true
    # add_index :walkers, :confirmation_token,   unique: true
    # add_index :walkers, :unlock_token,         unique: true
  end
end
