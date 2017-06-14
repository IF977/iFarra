class FixColumnName < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :comentarios, :evento_id_id, :evento_id
  end
end
