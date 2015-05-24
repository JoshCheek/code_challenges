# CSV Manipulation

## Swift Stats

You're analyzing the lyrics from Taylor Swift's discography. Included is a text file, lyrics.txt that has all of the
lyrics.

Your challenge, should you choose to accept it, is to analyze the text. You will have to first sanitize the lyrics.
After sanitizing, create a method that will return the number of unique words used in all of her lyrics.

**TDD OR DEATH**

### Bonus
Write a method that will create a hash which has unique words as the key, and the number of times the word appears
in her lyrics as the value.


Write a method that will return the top x used words.

Food for thought, should we include words such as, A, An, And, and The be included in our top words? Strip them out.

```
ruby -a -n \
     -e 'BEGIN { counts = Hash.new 0 }' \
     -e 'END { counts.sort_by(&:last).reverse.take(10).each { |word, count| puts "#{count}\t#{word}" } }' \
     -e '$F.each { |word| counts[word.downcase.gsub /\W/, ""] += 1 }' \
     swift_stats/lyrics.txt
```
