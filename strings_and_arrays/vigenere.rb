def vigenere(s1, s2)
  offset = 'a'.ord
  s2 = s2.downcase
  s1.gsub(/\w/).with_index do |c1, i|
    o1 = c1.downcase.ord     - offset
    o2 = s2[i%s2.length].ord - offset
    o1.+(o2).+(1).%(26).+(offset).chr.tap { |c| c.upcase! if c1 == c1.upcase }
  end
end
