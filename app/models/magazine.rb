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
    Magazine.all.find {|magazine|magazine.name == name}
end

  def article_titles
    article_titles = []
    Article.all.select do |article|
     if article.magazine == self
      article_titles << article.title
     end 
    end
    article_titles
  end 

  def contributors
    contributors = []
    Article.all.select do |article|
    if article.magazine == self
      contributors << article.author
   end 
  end
  contributors.uniq
  end

  def contributing_authors
    Article
    .all
    .select { |article| article.magazine == self }
    .map { |article| article.author }
    .tally
    .select { |key, value| value > 2 }
    .keys
  end
  
end 


  #   contributing_authors = []
  #  Article.all.select do |article|
  #   if article.magazine == self
  #   contributing_authors << article.author
  #   end 
  #  end
  #  contributing_authors.uniq
  # end

  # Article.all.select do |article|
  #   article.magazine == self
  # end.map do |article|
  #   article.author_name
  # end.tally.select do |key, value|
  #   value > 2
  # end.keys