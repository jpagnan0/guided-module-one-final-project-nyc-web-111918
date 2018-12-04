class TrainStations < ActiveRecord::Migration[5.0]
  def change
    create_table :train_stations do |t|
      t.string :name
      t.string :location
      t.string :year_built
    end
  end
end
