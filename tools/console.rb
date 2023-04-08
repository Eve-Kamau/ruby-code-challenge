require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Eric")
author2 = Author.new("Maggie")
author3 = Author.new("Adam")

mag1 = Magazine.new("Daily Tech News","Technology")
mag2 = Magazine.new("Farmer News","Agriculture")
mag3 = Magazine.new("Christianity", "Religion")


article1 = Article.new(author1, mag1, "The Reason")
article2 = Article.new(author2, mag2,"Experimental Faith")
article3 = Article.new(author3, mag3, "Apple Redefined")
### DO NOT REMOVE THIS
binding.pry


