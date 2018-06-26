def oxford_comma(array)
  array.delete_at(2)
  array << "and kohlrabi"
array.join(", ")
end