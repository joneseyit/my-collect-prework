def my_collect(array)
  i = 0
  new_array = []
  while i < array.length
    x =  yield array[i]
    new_array << x
    i += 1
  end
  puts new_array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]

my_collect(array) do |name|
  name.split(" ").first
end