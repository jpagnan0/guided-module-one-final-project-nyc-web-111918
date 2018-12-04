class TrainStationLines < ActiveRecord::Migration[5.0]
  def change
    create_table :train_station_lines do |t|
      t.integer :station_id
      t.integer :line_id
    end
  end
end
