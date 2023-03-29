class Song

    @@all = []
  
    attr_accessor :name
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.print_all_song_names
      self.all.each do |song|
        puts song.name
      end
    end
  end

hotline_bling = Song.new("Hotline Bling")
ninety_nine_problems = Song.new("99 Problems")
thriller = Song.new("Thriller")
puts Song.all