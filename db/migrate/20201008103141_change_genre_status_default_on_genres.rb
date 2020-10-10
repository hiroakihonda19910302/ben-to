class ChangeGenreStatusDefaultOnGenres < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :genres, :genre_status, from: false, to: true
  end
end
