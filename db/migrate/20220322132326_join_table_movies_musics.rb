class JoinTableMoviesMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_movies_musics do |t|
      t.references :movie, index: true, foreign_key: true
      t.references :music, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
