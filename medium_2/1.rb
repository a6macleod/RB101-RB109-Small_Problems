# input: string
# output: print an integer
# requirments:
#   print the longest string when divided by sentance
#   sentances end with (.) (!) and (?)

# create a longest sentance variable and set to 0
# create count holder for a string element
# increment the counter for each char
# Break when gets a sentance ending symbol
# if holder string length is > than longest sentance varialbe
# longest sentance variable = holder string length
# else count holder = 0
# find the longest
# print the length

PUNCTUATION = ['.', '!', '?']

def print_longest_sentance(string)
  longest_sentance_length = 0
  current_sentance_length = 0
  sentences = string.split(/\.|\?|!/)
  sentences.each do |sentence|
    current_sentance_length = sentence.split.length
    if current_sentance_length > longest_sentance_length
      longest_sentance_length = current_sentance_length
    end
  end
  puts longest_sentance_length
end

print_longest_sentance("This is a sentance. No, this is a sentance.")
print_longest_sentance("
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.")
