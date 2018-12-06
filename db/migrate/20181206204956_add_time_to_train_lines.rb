class AddTimeToTrainLines < ActiveRecord::Migration[5.2]
  def change
    add_column :train_lines, :start_time, :integer
    add_column :train_lines, :end_time, :integer
  end
end
