

def count_letters(string)
  indexer = {}
  # splits string into an array of letters with the index next to it
  string.split("").each_with_index do |letter,index|
    # array gets refreshed with every iteration
    array = []
    # if there is a space in the string, we will skip that iteration
    next if letter == " "
    # if there has not been a key created for that letter, it will be created now
    indexer[letter] = 0 unless indexer.include?(letter)
    # Now if there is a value of 0 for the given key, we will add the index to an array, then add the array to the hash
    #   If there already is an index present, we can just concat the second index into the array.
    if indexer[letter] != 0
      indexer[letter] << index
    elsif indexer[letter] == 0
      array << index
      indexer[letter] = array
    end
  end
  indexer
end

puts count_letters("test test tonky donk")