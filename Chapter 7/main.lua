function love.load()
  fruits = {"apple", "banana"}
  table.insert(fruits, "pear")
  table.insert(fruits, "pineapple")
  table.remove(fruits,2)
  fruits[1] = "tomato"
  
  for i, v in ipairs(fruits) do
    print(v)
    end
end
function love.draw()
  for i, v in ipairs(fruits) do
    love.graphics.print(v, 100, 100 + 50 * i)
  end
end