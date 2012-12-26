class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email

      t.timestamps
    end

    add_index(:users, :first)
    add_index(:users, :last)
    add_index(:users, :email)
  end
end
