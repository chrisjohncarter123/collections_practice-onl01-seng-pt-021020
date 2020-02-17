def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(array)
  temp = array[2]
  array[2] = array[1]
  array[1] = temp
  array
end

def swap_elements_from_to(array, index, destination_index)
  temp = array[destination_index]
  array[destination_index] = array[index]
  array[index] = temp
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  result = []
  
  array.each do |word|
    counter = 0;
    result_word = ""
    
    while counter < word.length do
      if(counter == 2)
        result_word << "$"
      else
        result_word << word.split("")[counter]
      end
      
      counter += 1
    end

    result << result_word
  end
  
  result
end

def find_a(array)
  return array.find_all { |i| i.chars.first == 'a' }
end

def sum_array(array)
  array.inject { |sum, n| sum + n }
end

def add_s(array)
  array.each_with_index.collect{ |element, index| 
    if(index != 1)
      element += "s"
    else
      element
    end
  }
end