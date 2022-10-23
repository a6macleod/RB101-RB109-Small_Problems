# input: three integers
# output: string
# requirements:
#   input integer are between 0..100
#   average of the three integers is compared to a get the grade
#   grade ranges are integers

# get the average of the three scores
# averages will be floats, keep as floats for comparison reasons
# compare average to a switch satement to return the correct letter grade

def get_grade(one, two, three)
  score = ((one.to_f + two + three) / 3)

  # case
  # when score >= 90
  #   'A'
  # when score >= 80
  #   'B'
  # when score >= 70
  #   'C'
  # when score >= 60
  #   'D'
  # when score >= 0
  #   'F'
  # end

  # A better switch case uses the actual range!
  case score
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end

end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
