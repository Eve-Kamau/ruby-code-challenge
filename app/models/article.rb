class Article
  @@all = []
  attr_reader :author, :magazine, :title

  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.print_articles
    self.all.each do |article|
      puts article.name
    end
  end

  def author
   @author
  end  

  def magazine
    @magazine
   end 

  end

