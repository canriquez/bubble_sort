def bubble_sort_by(arr)
  counter = 1 # initialized to 1.
  while counter <= arr.length - 1 # Check if we have run length-1 times the code
    arr.each_with_index do |_value, index| # using this method to have a self updated index done by the method
      next unless index < arr.length - 1 # as long as the index is less than the length of the array

      arr[index], arr[index + 1] = arr[index + 1], arr[index] if yield(arr[index], arr[index + 1]).positive?
      # if the yield(block) evaluates to a number > than 0 : execute
    end
    counter += 1 # increase counter
  end
  arr
end

puts bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
