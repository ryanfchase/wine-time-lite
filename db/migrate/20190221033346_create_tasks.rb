class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :category, index: true
      t.datetime :starts_time, index: true
      t.datetime :ends_time, index: true
    end
  end
end
