def combinations(arr1, arr2)
  # array product returns array of array
  new_arr = arr1.product(arr2)
  # Join the internal arrays and return the array
  new_arr.map!(&:join)
end
