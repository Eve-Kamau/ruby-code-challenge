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
   magazines.uniq
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
    Article.new(self, magazine, title)
  end

  def topic_areas
    topic_areas = []
    Article.all.select do |article|
    if article.author == self
      topic_areas << article.magazine.category
   end 
  end
  topic_areas.uniq
  end 

end 
