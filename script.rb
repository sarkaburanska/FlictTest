=begin
Write some code that will flatten an array of arbitrarily nested arrays of integers into a flat array of integers.
 e.g. [[1,2,[3]],4] becomes [1,2,3,4].
=end


def is_array(x)
  x.class == Array
end

def read_array_rec(array, result)
  for i in array do
    if is_array(i)
      puts i.inspect
      read_array_rec(i,result)
    else
      puts i.inspect
      result.push(i)
    end
  end
end

array = [[1,2,[3]],4]
puts array.inspect
result = []
read_array_rec(array, result)
puts result.inspect

