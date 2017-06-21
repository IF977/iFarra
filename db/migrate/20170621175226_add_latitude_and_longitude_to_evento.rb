class AddLatitudeAndLongitudeToEvento < ActiveRecord::Migration[5.0]
  def change
    add_column :eventos, :latitude, :float
    add_column :eventos, :longitude, :float
  end
end
