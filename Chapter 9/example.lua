--outermost local variable
local test = 20
--function parameter, middle local vairable
function some_function(test)
  if true then
    --innermost local variable
    local test = 40
    --prints innermost local variable
    print(test)
  end
  -- prints pparameter of functionn
  print(test)
end

--passes value to parameter, middle local variable
some_function(30)

--prints outermost local variable
print(test)