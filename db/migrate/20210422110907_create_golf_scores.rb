class CreateGolfScores < ActiveRecord::Migration[6.0]
  def change
    create_table :golf_scores do |t|
      t.integer :hole_1
      t.integer :hole_2
      t.integer :hole_3
      t.integer :hole_4
      t.integer :hole_5
      t.integer :hole_6
      t.integer :hole_7
      t.integer :hole_8
      t.integer :hole_9
      t.integer :out
      t.integer :hole_10
      t.integer :hole_11
      t.integer :hole_12
      t.integer :hole_13
      t.integer :hole_14
      t.integer :hole_15
      t.integer :hole_16
      t.integer :hole_17
      t.integer :hole_18
      t.integer :in
      t.integer :total
      t.integer :handicap_comp
      t.date :data

      t.timestamps
    end
  end
end
