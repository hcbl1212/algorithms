class BinarySearch
    def find(ordered_list, look_up)
        low = 0
        high = ordered_list.length - 1
        return_value = nil
        while low <= high do
            position = ((high + low) / 2).floor
            item_to_compare = ordered_list[position]
           if item_to_compare == look_up
               return_value = position
               break 
            elsif item_to_compare > look_up
                high = position - 1
            else
                low = position + 1
            end
        end
        return_value
    end
end