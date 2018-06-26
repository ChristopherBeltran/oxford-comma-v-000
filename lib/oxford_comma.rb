def oxford_comma(array)
  case
  when array.length > 2
  array[0..-2].join(", ") + ", and " + array.last
  
  when array.length == 2
    array.join(" and ")
  when array.length == 1 
    array.join
end 
end 