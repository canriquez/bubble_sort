
def bubble_sort_by (arr)
 
    counter =1   #initialized to 1.
       while counter <= arr.length-1 do  #Check if we have run length-1 times the code
   
           arr.each_with_index do |value,index|     #using this method to have a self updated index done by the method


                if index < arr.length-1

                    if yield(arr[index],arr[index+1])>0
                        arr[index], arr[index+1] = arr[index+1], arr[index]
                    end
                end

           end
           counter +=1           #increase counter
       end
       return arr
   end

   
   

   puts bubble_sort_by(["hi","hello","hey"]) {|left,right| right.length - left.length}

   #puts "I am in the block: #{left}, #{right}