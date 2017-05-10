def translate(phrase)
  vowels = "aeiou"
  suffix = ''
  words = phrase.split # Split the phrase into individual words
  
  words.each do |word| # For each word
    i = 0
    # Find the index of the first vowel in the word.
    # The vowel 'u' doesn't count if it follows a 'q'.
    while !vowels.include?(word[i]) ||
          ( i > 0 && word[i-1] == 'q' && word[i] == 'u' )
      i += 1
    end

    if i > 0
      suffix = word.slice!(0..i-1) # Remove the leading consonant(s)
    end

    # Stick the leading consonants (if any) onto the end of the word, followed by 'ay'
    word.concat(suffix + 'ay')
  end
  words.join(' ') # Reassemble the entire phrase
end
