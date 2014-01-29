class AddColumnsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :title, :string
    add_column :movies, :release_date, :string
    add_column :movies, :duration, :string
    add_column :movies, :certification, :string
    add_column :movies, :description, :string
    add_column :movies, :cast, :string
    add_column :movies, :director, :string
    add_column :movies, :genres, :string
    add_column :movies, :buy_price, :string
    add_column :movies, :rental_price, :string
    add_column :movies, :trailer, :string
    add_column :movies, :packshot_image_url, :string
    add_column :movies, :background_image_url, :string
    add_column :movies, :hero_image_url, :string
  end
end
