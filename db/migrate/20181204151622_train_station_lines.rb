class TrainStationLines < ActiveRecord::Migration[5.0]
  def change
    create_table :train_station_lines do |t|
      t.integer :train_station_id
      t.integer :train_line_id
    end
  end
end
