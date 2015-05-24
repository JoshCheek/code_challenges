class Chunker
  def chunk(string, n=5)
    string.chars.each_slice(n).map &:join
  end
end
