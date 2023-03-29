class Cinema  
    attr_accessor :name, :location  
    def initialize(name, location)
          @name = name
          @location = location
          @movies = []
    end    
end

class Movie  
    @@all = []  

attr_accessor :title, :showtime, :cinema  

    def initialize(title, showtime)
        @title = title
        @showtime = showtime
        @@all << self  
    end

    def add_movie(movie)
    @movies << movie
    movie.cinema = self
    end
end
    
cobble_hill = Cinema.new("Cobble Hill","Brooklyn")
puts cobble_hill

spider_man = Movie.new("Spider-Man","9:00")
puts spider_man

cobble_hill.add_movie(spider_man)

