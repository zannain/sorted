
# Accepts an array, Sorts and returns the array
def sort_array(arr)
    if arr.respond_to?(:sort) && arr.class == Array && arr.length > 0
        sorted = arr.sort
        min = arr[0]
        max = arr[arr.length-1]
        all_numbers = (min..max).to_a
        return all_numbers - sorted
    elsif arr.length == 0 && arr.class == Array
        return []
    else
        return "Please provide an array as an input"
    end
end