class CreateDiveLeader < ActiveRecord::Migration[6.0]
  def change
    create_table :dive_leaders do |t|
      t.string :name

      t.timestamps
    end
    create_join_table :dives, :dive_leaders do |t|
      t.index :dives_id
      t.index :dive_leaders_id
    end
  end
end
