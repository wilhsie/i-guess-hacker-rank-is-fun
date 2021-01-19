class RepeatedString
  def repeatedString(s, n)
    # infinitely repeated string, and length of substring, return number times char 'a' occurs
    #

    # create "infinite" string

    # .. so creating the infinite string takes too much time with large numbers
    # what if we calculate the number of a's before hand,
    # then multiply by the number of times the substring fits into the string .. ?

    num_a_in_substring = s.chars.each.count('a')
    substring_length = s.length
    first_as = (n / substring_length) * num_a_in_substring

    if n % substring_length != 0
      last_as = s[0..((n % substring_length) - 1)].chars.each.count('a')
      first_as + last_as
    else
      first_as
    end

    # yup . it works.
  end
end

run = RepeatedString.new
puts run.repeatedString("aba", 10)
puts run.repeatedString("a", 10000000000)
puts run.repeatedString("aab", 882787)