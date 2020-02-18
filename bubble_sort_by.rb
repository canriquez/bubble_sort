
def bubble_sort_by (arr)
 
    counter =1   #initialized to 1.
       while counter <= arr.length-1 do  #Check if we have run length-1 times the code
           arr.each_with_index do |value,index|  #using this method to have a self updated index done by the method
                if index < arr.length-1 #as long as the index is less than the length of the array
                    if yield(arr[index],arr[index+1])>0  #if the yield(block) evaluates to a number > than 0 : execute
                        arr[index], arr[index+1] = arr[index+1], arr[index]
                    end
                end
           end
           counter +=1   #increase counter
       end
       return arr
   end
   
puts bubble_sort_by(["hi","hello","hey"]) {|left,right| right.length - left.length}
