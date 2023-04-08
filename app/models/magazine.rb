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
    article_titles
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


