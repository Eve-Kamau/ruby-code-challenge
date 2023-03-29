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

