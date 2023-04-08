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

  def self.find_by_name(name)
    Magazine.all.find do |magazine|
      magazine.name == name
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
  Article.all.select do |article|
    article.magazine == self
  end.map do |article|
    article.author_name
  end.tally.select do |key, value|
    value > 2
  end.keys

end 


  #   contributing_authors = []
  #  Article.all.select do |article|
  #   if article.magazine == self
  #   contributing_authors << article.author
  #   end 
  #  end
  #  contributing_authors.uniq
  # end