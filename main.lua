local canvas = love.graphics.newCanvas()
local clear
screenW, screenH = love.graphics.getDimensions()
screenWMid, screenHMid = screenW / 2, screenH / 2
squareW = 1
maxColoms = screenW/squareW
maxRows = screenH/squareW
maxSquares = maxColoms
love.mouse.setCursor(fa)
function love.update(dt)
    count = 200*200/(squareW*squareW)
    canvas:renderTo(function()
        if clear then
            love.graphics.clear()
        end
        love.graphics.setColor(love.math.random(255), love.math.random(255), love.math.random(255), love.math.random(255));
        for i=0,count do
            x = (love.math.random(screenW/squareW)-1)*squareW
            y = (love.math.random(screenH/squareW)-1)*squareW
            love.graphics.rectangle('fill', x, y, squareW, squareW)
        end
      end);
--    end
end

function love.draw()
    love.graphics.setColor(255, 255, 255);
    love.graphics.draw(canvas);
end


function love.keypressed(key)
  if  key == 'escape' then
    love.event.quit()
  end
end
