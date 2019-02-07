class CreateJigs < ActiveRecord::Migration[5.1]
  def change
    create_table :jigs do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
