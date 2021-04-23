class CreateCountry < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name

      t.timestamps
    end
    create_join_table :dives, :countries do |t|
      t.index :dives_id
      t.index :countries_id
    end
  end
end
