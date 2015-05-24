def compress(word)
  word.chars.slice_before("") { |crnt, prev|
    slice = (crnt != prev)
    prev.replace crnt
    slice
  }.map { |chars| "#{chars.first}#{chars.length}" }
   .join
   .tap { |result| return [result, word].min_by &:length }
end
