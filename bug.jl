```julia
function myfunction(x)
  if x > 0
    return x^2
  else
    return 0
  end
end

x = -1
y = myfunction(x)
println(y) # Output: 0

x = 1
y = myfunction(x)
println(y) # Output: 1 

#However, if we try to use a mutable struct and then modify a field of it within the function:
mutable struct MyStruct
  value::Int64
end

function modify_struct(s::MyStruct)
  s.value = s.value + 1
  return s
end

s = MyStruct(1)
println(s.value) #Output: 1
s = modify_struct(s)
println(s.value) #Output: 2
```