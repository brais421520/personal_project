class CreateGolfLocation < ActiveRecord::Migration[6.0]
  def change
    create_table :golf_locations do |t|
      t.string :name
      t.string :country
      t.integer :loc_hole_1
      t.integer :loc_hole_2
      t.integer :loc_hole_3
      t.integer :loc_hole_4
      t.integer :loc_hole_5
      t.integer :loc_hole_6
      t.integer :loc_hole_7
      t.integer :loc_hole_8
      t.integer :loc_hole_9
      t.integer :loc_out
      t.integer :loc_hole_10
      t.integer :loc_hole_11
      t.integer :loc_hole_12
      t.integer :loc_hole_13
      t.integer :loc_hole_14
      t.integer :loc_hole_15
      t.integer :loc_hole_16
      t.integer :loc_hole_17
      t.integer :loc_hole_18
      t.integer :loc_in
      t.integer :loc_total
      t.integer :dis_hole_1
      t.integer :dis_hole_2
      t.integer :dis_hole_3
      t.integer :dis_hole_4
      t.integer :dis_hole_5
      t.integer :dis_hole_6
      t.integer :dis_hole_7
      t.integer :dis_hole_8
      t.integer :dis_hole_9
      t.integer :dis_out
      t.integer :dis_hole_10
      t.integer :dis_hole_11
      t.integer :dis_hole_12
      t.integer :dis_hole_13
      t.integer :dis_hole_14
      t.integer :dis_hole_15
      t.integer :dis_hole_16
      t.integer :dis_hole_17
      t.integer :dis_hole_18
      t.integer :dis_in
      t.integer :dis_total

      t.timestamps
    end
    create_join_table :golf_scores, :golf_locations do |t|
      t.index :golf_scores_id
      t.index :golf_locations_id
    end
  end
end
