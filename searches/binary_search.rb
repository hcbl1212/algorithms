class BinarySearch

    def find(ordered_list, look_up)
        position = nil
        ordered_list_length = ordered_list.length 
        look_up_position = (ordered_list_length/2).floor
        while position.nil? || look_up_position == 0 || look_up_position == ordered_list_length -1 do
            item_to_compare = ordered_list[look_up_position]
            if item_to_compare == look_up
                position = look_up_position
            elsif item_to_compare > look_up
                look_up_position = ((ordered_list_length - look_up_position)/2).floor
            elsif item_to_compare < look_up
                look_up_position = (look_up_position/2).ceil
            end
        end
        look_up_position
    end

end