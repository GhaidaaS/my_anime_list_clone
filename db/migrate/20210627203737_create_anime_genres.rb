class CreateAnimeGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :anime_genres do |t|
      t.references :anime, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
