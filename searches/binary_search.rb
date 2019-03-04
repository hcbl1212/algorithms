class BinarySearch
    def find(ordered_list, look_up)
        # bottom of the list
        low = 0
        # top of the list
        high = ordered_list.length - 1
        # value to return, will return nil if the needle is not in the haystack
        return_value = nil
        # we have at least one element to search
        while low <= high do
            # find the middle
            position = ((high + low) / 2).floor
            # get the item to compare to the item passed
            item_to_compare = ordered_list[position]
            # if found lets bounce
            if item_to_compare == look_up
               return_value = position
               break 
            # if the item we are looking for is less than the middle item
            # we need to drop the the top of the array and search the bottom
            # of this part of the list
            elsif item_to_compare > look_up
                high = position - 1
            # else the item is greater and we need to raise the bottom
            # and search the top of this part of the list
            else
                low = position + 1
            end
        end
        # value to return
        return_value
    end
end