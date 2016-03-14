# Create an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?
string = "A sample string to determine uniqueness of characters"

# puts string.downcase.chars.uniq.count
 #returns number of unique characters from string. In this case there are 20 unique characters
 def count_char(string)
  if string.length > 0 && string.chars.uniq
    return true
  elsif string.length < 0
    return false
  else
    return false
  end
 end

 count_char("What a wonderful world")

 # 2. Given two strings, write a method to decide if one is a permutation of the other.

def matching_strings(string1, string2)
  first_string = string1.downcase.lstrip.split('').sort.join.lstrip
  second_string = string2.downcase.lstrip.split('').sort.join.lstrip
  first_string == second_string ? "Match" : "No Match"
end

# 3. Write a method to replace all spaces in a string with ‘%20’. For example, an
# input of “Bitmaker Labs Summer 2013” would produce an output of
# “Bitmaker%20Labs%20Summer%202013”.

def no_space_for_spaces(string)
  return string.gsub(' ', '%20')
end

no_space_for_spaces("Checking out this great sentence I just created!")

# Implement a method to perform basic string compression using the counts of
# consecutive repeated characters. For example, the string “abbcccccaa” would become “a1b2c5a2”. If the compressed string isn’t shorter than the original string then your method should return the original string.

def compressed(string)
  counter = Hash.new(0)
  string.chars.each{|i|counter[i] += 1}
  new_string = counter.to_a.join
  if new_string > string
    return string
  else
    return new_string
  end
end


# Assume you have a method isSubstring which checks if one word is a substring of another. Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to isSubstring (e.g. “waterbottle” is a rotation of “erbottlewat”.


def isSubString(string1, string2)
  if string1.chars.sort == string2.chars.sort
    return true
  else
    return false
  end
end

#anagram
def anagram(array)
  return array.group_by{|word| word.chars.sort}.values
end