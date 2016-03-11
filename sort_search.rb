class Person
  attr_reader :age
  def initialize(age)
    @age = age
  end
end
jack = Person.new(25)
maria = Person.new(33)
lisa = Person.new(54)
mick = Person.new(56)

puts [maria.age,jack.age,mick.age,lisa.age].sort

def merge(first_array, second_array)
  return second_array if first_array.empty?
  return first_array if second_array.empty?
  if first_array.first <= second_array.first
    element = first_array.shift
  else
    element = second_array.shift
  end
  return [element] + merge(first_array, second_array)
end
