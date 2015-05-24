def rotate(ary)
  ary.transpose.map &:reverse
end
