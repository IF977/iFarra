class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :user_email
      t.text :body
      t.references :evento_id, foreign_key: true

      t.timestamps
    end
  end
end
