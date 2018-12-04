class TrainLines < ActiveRecord::Migration[5.0]
  def change
    create_table :train_lines do |t|
      t.string :name
      t.string :color
    end
  end
end
