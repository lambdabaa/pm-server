class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :creator_id
      t.string :title
      t.text :description
      t.date :day
      t.time :time
      t.integer :priority
      t.integer :state

      t.timestamps
    end

    add_index(:tasks, :creator_id)
    add_index(:tasks, :title)
    add_index(:tasks, :day)
    add_index(:tasks, :time)
    add_index(:tasks, :priority)
  end
end
