# Please copy/paste all three classes into this file to submit your solution!
require 'pry'

class Author
  attr_reader :name

  def initialize(name="Ava")
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
   end
  end

  def contributors
    contributors = []
    Article.all.select do |article|
    if article.author == self
      contributors << article.magazine
   end 
  end
  end

  def add_article(magazine, title)
    Article.new(author: self, magazine: magazine, title: title)
  end

  def topic_areas
    topic_areas = []
    Article.all.select do |article|
    if article.author == self
      topic_areas << article.magazine.category
   end 
  end
end 

end 

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

    def find_by_name(name)
      self.all.find_all do |magazine_name| 
      self.magazine_name.name == name
      end
    end

    def article_titles
      article_titles = []
      Article.all.select do |article|
       if article.magazine.title == self
        article_titles << article.title
       end 
      end
    end 

    def contributing_authors
      contributing_authors = []
     Article.all.select do |article|
      if article.magazine.name == self
      contributing_authors << article.author
      end 
     end
    end

end 

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

puts Author 
puts author1 = Author.new("Eric")
puts author2 = Author.new("Maggie")
puts author3 = Author.new("Adam")
puts 

puts Article
puts article1 = Article.new("Simon", "Glory News", "The Reason")
puts article2 = Article.new("Edna","Charisma","Experimental Faith")
puts article3 = Article.new("Xiao", "Wired", "Apple Redefined")
puts

puts Magazine
puts mag1 = Magazine.new("Daily Tech News","Technology")
puts mag2 = Magazine.new("Farmer News","Agriculture")
puts mag3 = Magazine.new("Christianity", "Religion")
puts 

puts Article.all

#------------------------------------------------------------

binding.pry

