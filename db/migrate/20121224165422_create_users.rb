class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :image_url

      t.string :facebook_id
      t.text :facebook_me
      t.string :facebook_token
      t.string :facebook_token_expiration

      t.timestamps
    end

    add_index(:users, :facebook_id)
    add_index(:users, :first)
    add_index(:users, :last)
    add_index(:users, :email)
  end
end
