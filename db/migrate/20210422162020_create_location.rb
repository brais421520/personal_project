class CreateLocation < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name

      t.timestamps
    end

    create_join_table :dives, :locations do |t|
      t.index :dives_id
      t.index :locations_id
    end
  end
end
