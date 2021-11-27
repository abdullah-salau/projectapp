class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :month
      t.integer :day
      t.text :title

      t.timestamps
    end
  end
end
