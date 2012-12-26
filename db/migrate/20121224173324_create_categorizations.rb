class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :task_id
      t.integer :tag_id

      t.timestamps
    end

    add_index(:categorizations, :task_id)
    add_index(:categorizations, :tag_id)
  end
end
