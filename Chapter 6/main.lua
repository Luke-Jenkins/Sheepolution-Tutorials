function love.load()
  x = 300
  y = 225
  a = 30
  b = 30
  xdirection = 1
  ydirection = 1
  score = 0
end
function love.update(dt)
  if love.keyboard.isDown("d") then
    x = x + 350 * dt
  elseif love.keyboard.isDown("a") then
    x = x - 350 * dt
  elseif love.keyboard.isDown("s") then
    y = y + 400 * dt
  elseif love.keyboard.isDown("w") then
    y = y - 400 * dt
  end
  if a >= 780 or a <= 10 then
    xdirection = xdirection * -1
  end
  if b <= 10 or b >= 575 then
    ydirection = -1 * ydirection 
  end
  a = a + xdirection * 350 * dt
  b = b + ydirection * 400 * dt
  print(a, b)
end
function love.draw()
  if a > x and a < x + 150 and b > y and b < y + 150 then
    love.graphics.rectangle("fill", x, y, 150, 150)
    score = score + 1
  else
    love.graphics.rectangle("line", x, y, 150, 150)
  end
  love.graphics.ellipse("fill", a, b, 20, 20)
  love.graphics.print("Score: "..score, 10, 10)
end
