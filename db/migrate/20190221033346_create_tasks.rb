class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :category
      t.datetime :starts_time
      t.datetime :ends_time
    end
    add_index :tasks, :category
    add_index :tasks, :starts_time
    add_index :tasks, :ends_time
  end
end
