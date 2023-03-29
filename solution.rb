# Please copy/paste all three classes into this file to submit your solution!
require 'pry'
class Author
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def articles 
    Article.all.select do |article|
    article.author == self
    end
  end

  def magazines 
    magazines = []
    Article.all.select do |article|
    if article.author == self
      magazines << article.magazine
end 

puts
puts "AUTHOR CONSOLE"
mike = Author.new
puts mike.name
agatha = Author.new("Agatha")
puts agatha.name
#------------------------------------------------------------
  class Magazine
    @@all = []
    attr_accessor :name, :category
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.print_all_magazines
      self.all.each do |magazine|
        puts magazine.name
      end
    end
  end

  puts
  puts "MAGAZINE CONSOLE"
  digest = Magazine.new("Readers Digest", "News")
  puts digest.name
  puts digest.category
  
  upishi = Magazine.new("Upishi Bora", "Cooking")
  puts upishi.name
  puts upishi.category
  
  harvard = Magazine.new("Harvard Magazine", "Educational")
  charisma = Magazine.new("Charisma Magazine", "Religion")
  wired = Magazine.new("Wired", "Tech")
  
  puts Magazine.all
#------------------------------------------------------------
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

puts
puts "ARTICLE CONSOLE"
glory = Article.new
puts glory.title 
puts glory.author
puts glory.magazine 

charisma = Article.new("Charisma")
wired = Article.new("Wired")

puts Article.all

#------------------------------------------------------------

binding.pry



