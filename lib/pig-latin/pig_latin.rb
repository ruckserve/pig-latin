class PigLatin::PigLatin
  def self.translate(string)
    break_point = find_break_point(string)

    return string + "way" if break_point == 0

    pig, latin = string[0..break_point-1], string[break_point..-1]
    latin + pig + "ay"
  end

  def self.find_break_point(string)
    vowel_break_point = /[aeiou]/ =~ string ? /[aeiou]/ =~ string : string.length + 1
    y_break_point = /[y]/ =~ string ? /[y]/ =~ string : string.length + 1

    if vowel_break_point < y_break_point
      return vowel_break_point
    else
      /^y/.match(string) ? vowel_break_point : y_break_point
    end
  end
end
