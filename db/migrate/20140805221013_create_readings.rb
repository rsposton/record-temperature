class CreateReadings < ActiveRecord::Migration
  def up
    create_table :readings do |t|
      t.string   :location, :default => "home", :null => false
      t.float    :temperature
      t.datetime :recorded_at

      t.timestamps
    end
  end

  def down
    drop_table :readings
  end

end
