Director.delete_all
gl = Director.create(:name => "George Lucas", :poster_url => "http://ia.media-imdb.com/images/M/MV5BMTA0Mjc0NzExNzBeQTJeQWpwZ15BbWU3MDEzMzQ3MDI@._V1_UY317_CR0,0,214,317_AL_.jpg")
ron_howard = Director.create(:name => "Ron Howard", :poster_url => "http://ia.media-imdb.com/images/M/MV5BMTkzMDczMjUxNF5BMl5BanBnXkFtZTcwODY1Njk5Mg@@._V1_UX214_CR0,0,214,317_AL_.jpg")
ss = Director.create(:name => "Steven Spielberg", :poster_url => "http://ia.media-imdb.com/images/M/MV5BMTY1NjAzNzE1MV5BMl5BanBnXkFtZTYwNTk0ODc0._V1_UX214_CR0,0,214,317_AL_.jpg")
rz = Director.create(:name => "Robert Zemeckis", :poster_url => "http://ia.media-imdb.com/images/M/MV5BMTgyMTMzMDUyNl5BMl5BanBnXkFtZTcwODA0ODMyMw@@._V1_UX214_CR0,0,214,317_AL_.jpg")
puts "There are now #{Director.count} directors in the database."

Movie.delete_all
Movie.create(:director_id => ron_howard.id, :omdb_key => 'tt0112384', :title => "Apollo 13", :year => 1995)
Movie.create(:director_id => gl.id, :omdb_key => 'tt0076759', :title => "Star Wars", :year => 1977)
Movie.create(:director_id => rz.id, :omdb_key => 'tt0162222', :title => "Cast Away", :year => 2000)
Movie.create(:director_id => ss.id, :omdb_key => 'tt0082971', :title => "Raiders of the Lost Ark", :year => 1981)
Movie.create(:director_id => ss.id, :omdb_key => 'tt0107290', :title => "Jurassic Park", :year => 1993)
Movie.create(:director_id => ss.id, :omdb_key => 'tt0362227', :title => "The Terminal", :year => 2004)

puts "There are now #{Movie.count} movies in the database."
