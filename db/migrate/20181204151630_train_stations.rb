class TrainStations < ActiveRecord::Migration[5.0]
  def change
    create_table :train_stations do |t|
      t.string :name
      t.string :location
      t.string :zip_code
      t.string :year_built
      t.timestamps
    end
  end
end
