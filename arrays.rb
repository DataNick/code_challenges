# Given an image represented by an NxN matrix, where each pixel in the image is 4 bytes, write a method to rotate the image by 90 degrees. Can you do this in place?
matrix = Array.new(3){Array.new(3,rand(4))}
# puts matrix
puts matrix.transpose.map(&:reverse)

require 'pp'
n = 10
a = []
n.times { a << (1..n).to_a }

pp a

0.upto(n/2-1) do |i|
  i.upto(n-i-2) do |j|
    tmp = a[i][j]
    a[i][j] = a[n-j-1][i]
    a[n-j-1][i] = a[n-i-1][n-j-1]
    a[n-i-1][n-j-1] = a[j][n-i-1]
    a[j][n-i-1] = tmp
  end
end

pp a

# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column are set to 0.
require "spec_helper"


class Matri
    def initialize(input)
        @input  = input
        @zeros  = []
    end

    def solve
        @input.each_with_index do |row, i|
            row.each_with_index do |element, j|
                @zeros << [i,j] if element == 0
            end
        end

        @zeros.each do |x,y|
            set_h_zero(x)
            set_v_zero(y)
        end

        @input
    end


    private

    def set_h_zero(row)
        @input[row].map!{0}
    end

    def set_v_zero(col)
        @input.size.times do |r|
            @input[r][col] = 0
        end
    end
end


Matri.new([[1,1,1,1],[2,3,5,6], [3,0,0,1]])
matrix = _
matrix.solve = [[1,0,0,1],[2,0,0,6],[0,0,0,0]]

# Assume you have a method isSubstring which checks if one word is a substring of another. Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to isSubstring (e.g. “waterbottle” is a rotation of “erbottlewat”.


def isSubString(string1, string2)
  if string1.chars.sort == string2.chars.sort
    return true
  else
    return false
  end
end












