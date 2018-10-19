def my_collect(array)
  i = 0
  new_array = []
  while i < array.length
    yield array[i]
    new_array << array[i]
    i += 1
  end
  puts new_array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]

my_collect(array) do |name|
  name.split(" ").first
end