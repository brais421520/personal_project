class CreateDives < ActiveRecord::Migration[6.0]
  def change
    create_table :dives do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :start_pressure
      t.integer :end_pressure
      t.integer :max_depth
      t.string :comment

      t.timestamps
    end
  end
end
