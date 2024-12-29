```julia
using DeepCopy

mutable struct MyStruct
  value::Int64
end

function modify_struct(s::MyStruct)
  s_copy = deepcopy(s)
  s_copy.value = s_copy.value + 1
  return s_copy
end

s = MyStruct(1)
println(s.value) # Output: 1
s_modified = modify_struct(s)
println(s.value)      # Output: 1
println(s_modified.value) # Output: 2
```