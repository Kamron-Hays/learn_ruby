class Book
  attr_accessor :title
  
  # Assign a title (via operator override)
  def title=(phrase)
    exceptions = ['the', 'a', 'an', 'and', 'in', 'of']
    words = phrase.split # splits on space by default
    first = true
    words.each do |word|
      if !exceptions.include?(word) || first
        word.capitalize! # exclamation assigns result to 'word'
      end
      first = false
    end
    @title = words.join(' ') #put the phrase back together
  end

  # Get the title.
  def title
    @title
  end
end
