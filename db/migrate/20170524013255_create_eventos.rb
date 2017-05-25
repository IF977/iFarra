class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nome
      t.datetime :inicio
      t.datetime :fim
      t.string :descricao
      t.string :nome_local
      t.string :endereco
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
