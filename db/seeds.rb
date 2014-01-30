# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'imdb'

5.times {

	imdb_movie = Imdb::Movie.new(rand(1000000).to_s)
	if (imdb_movie.title != "")

		movie = Movie.new()
		movie.title = imdb_movie.title
	    movie.release_date = imdb_movie.release_date
	    movie.duration = imdb_movie.length.to_s
	    movie.certification = ""
	    movie.description = imdb_movie.plot_summary
	    movie.cast = imdb_movie.cast_members.join(", ")
	    movie.director = imdb_movie.director
	    movie.genres = imdb_movie.genres.join(", ")
	    movie.buy_price = "£7.99"
	    movie.rental_price = "£4.99"
	    movie.trailer = imdb_movie.trailer_url
	    movie.packshot_image_url = imdb_movie.poster
	    movie.background_image_url = "http://hhhhold.com/1280x720"
	    movie.hero_image_url = imdb_movie.poster
	    #movie.save!

	end	

}
