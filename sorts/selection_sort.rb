class SelectionSort
    attr_accessor :sort_array
    def initialize(arr)
        self.sort_array = arr.dup        
    end

    def sort
        num_times = sort_array.size
        sorted_array = []
        num_times.times do
            smallest_index = sort_array.rindex(sort_array.min)
            sorted_array << sort_array.delete_at(smallest_index)
        end
        sorted_array 
    end

end