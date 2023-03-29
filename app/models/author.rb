
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

puts "AUTHOR CONSOLE"
mike = Author.new
puts mike.name
agatha = Author.new("Agatha")
puts agatha.name
#------------------------------------------------------------