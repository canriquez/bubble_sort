
def bubble_sort (arr)
 
 counter =1   #initialized to 1.
    while counter <= arr.length-1 do  #Check if we have run length-1 times the code

        arr.each_with_index do |value,index|     #using this method to have a self updated index done by the method

            if (value <=> arr[index+1]) == 1    # We use the combined comparison operator to find who is biggest

                arr[index], arr[index+1] = arr[index+1], arr[index]    #we transpose the elements if left > right 

            end
        end
        counter +=1           #increase counter
    end
    return arr
end



puts bubble_sort([4,25,3,243,3453,12,3,5,4])

