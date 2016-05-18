def uniques(arr)
  # Initialize unique_arr and hash_table
  unique_arr = []
  hash_table = {}
  # Add items to unique_arr of hash_table entry is empty for that item,
  # Add the item into hash_table for future lookup
  arr.each do |item|
    if hash_table[item].nil?
      unique_arr << item
      hash_table[item] = true
    end
  end
  unique_arr
end
