def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, times = 2)
  result = []
  while times > 0 do
    result.push(phrase)
    times -= 1
  end
  result.join(' ')
end

def start_of_word(word, number_of_letters = 1)
  word[0..(number_of_letters-1)]
end

def first_word(phrase)
  phrase.split.first
end

def titleize(phrase)
  exceptions = ["the", "and", "over"]
  words = phrase.split # splits on space by default
  first = true
  words.each do |word|
    if !exceptions.include?(word) || first
      word.capitalize! # exclamation assigns result to 'word'
    end
    first = false
  end
  words.join(' ') #default is to join without any separator
end
