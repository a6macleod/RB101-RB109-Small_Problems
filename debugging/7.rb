def neutralize(sentence)
  words = sentence.split(' ')
  new_sentance = words.reject do |word|
    negative?(word)
  end

  new_sentance.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# The method was iterating and modiying at the same time which caused "boring" to be skipped because the word prior, "dull" was deleted thus shifing "boring" up to the index that previously had "dull" and so the iteration moved on skipping it.
