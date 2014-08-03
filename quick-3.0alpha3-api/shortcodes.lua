--[[

Copyright (c) 2011-2014 chukong-inc.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

]]

--[[--

]]

local c = cc
Node = c.Node

-- Node

function Node:add(child, zorder, tag)
    self:addChild(child, zorder or 0, tag or 0)
    return self
end

function Node:addTo(target, zorder, tag)
    target:addChild(self, zorder or 0, tag or 0)
    return self
end

function Node:show()
    self:setVisible(true)
    return self
end

function Node:hide()
    self:setVisible(false)
    return self
end

function Node:pos(x, y)
    self:setPosition(x, y)
    return self
end

function Node:center()
    self:setPosition(display.cx, display.cy)
    return self
end

function Node:scale(scale)
    self:setScale(scale)
    return self
end

function Node:rotation(r)
    self:setRotation(r)
    return self
end

function Node:size(width, height)
    if type(width) == "userdata" then
        self:setContentSize(width)
    else
        self:setContentSize(cc.size(width, height))
    end
    return self
end

function Node:opacity(opacity)
    self:setOpacity(opacity)
    return self
end

function Node:zorder(z)
    self:setZOrder(z)
    return self
end


-- Sprite

Sprite = c.Sprite

Sprite.playOnce = Sprite.playAnimationOnce
Sprite.playForever = Sprite.playAnimationForever

function Sprite:displayFrame(frame, index)
    if type(frame) == "string" then
        self:setDisplayFrame(frame, index or 0)
    else
        self:setDisplayFrame(frame)
    end
    return self
end

function Sprite:flipX(b)
    self:setFlipX(b)
    return self
end

function Sprite:flipY(b)
    self:setFlipY(b)
    return self
end


-- Layer

Layer = c.Layer

function Layer:onTouch(listener)
    if USE_DEPRECATED_EVENT_ARGUMENTS then
        self:addNodeEventListener(c.NODE_TOUCH_EVENT, function(event)
            return listener(event.name, event.x, event.y, event.prevX, event.prevY)
        end)
    else
        self:addNodeEventListener(c.NODE_TOUCH_EVENT, listener)
    end
    return self
end

function Layer:enableTouch(enabled)
    self:setTouchEnabled(enabled)
    return self
end

function Layer:onKeypad(listener)
    if USE_DEPRECATED_EVENT_ARGUMENTS then
        self:addNodeEventListener(c.KEYPAD_EVENT, function(event)
            return listener(event.name)
        end)
    else
        self:addNodeEventListener(c.KEYPAD_EVENT, listener)
    end
    return self
end

function Layer:enableKeypad(enabled)
    self:setKeypadEnabled(enabled)
    return self
end

function Layer:onAccelerate(listener)
    if USE_DEPRECATED_EVENT_ARGUMENTS then
        self:addNodeEventListener(c.ACCELERATE_EVENT, function(event)
            return listener(event.x, event.y, event.z, event.timestamp)
        end)
    else
        self:addNodeEventListener(c.ACCELERATE_EVENT, listener)
    end
    return self
end

function Layer:enableAccelerometer(enabled)
    self:setAccelerometerEnabled(enabled)
    return self
end


-- actions

function Node:stop()
    self:stopAllActions()
    return self
end

function Node:fadeIn(time)
    self:runAction(cc.FadeIn:create(time))
    return self
end

function Node:fadeOut(time)
    self:runAction(cc.FadeOut:create(time))
    return self
end

function Node:fadeTo(time, opacity)
    self:runAction(cc.FadeTo:create(time, opacity))
    return self
end

function Node:moveTo(time, x, y)
    self:runAction(cc.MoveTo:create(time, cc.p(x or self:getPositionX(), y or self:getPositionY())))
    return self
end

function Node:moveBy(time, x, y)
    self:runAction(cc.MoveBy:create(time, cc.p(x or 0, y or 0)))
    return self
end

function Node:rotateTo(time, rotation)
    self:runAction(cc.RotateTo:create(time, rotation))
    return self
end

function Node:rotateBy(time, rotation)
    self:runAction(cc.RotateBy:create(time, rotation))
    return self
end

function Node:scaleTo(time, scale)
    self:runAction(cc.ScaleTo:create(time, scale))
    return self
end

function Node:scaleBy(time, scale)
    self:runAction(cc.ScaleBy:create(time, scale))
    return self
end

function Node:skewTo(time, sx, sy)
    self:runAction(cc.SkewTo:create(time, sx or self:getSkewX(), sy or self:getSkewY()))
end

function Node:skewBy(time, sx, sy)
    self:runAction(cc.SkewBy:create(time, sx or 0, sy or 0))
end

function Node:tintTo(time, r, g, b)
    self:runAction(cc.TintTo:create(time, r or 0, g or 0, b or 0))
    return self
end

function Node:tintBy(time, r, g, b)
    self:runAction(cc.TintBy:create(time, r or 0, g or 0, b or 0))
    return self
end

--other
--奇怪，为什么把这一堆 Node: 的放最底下，在ide中就不提示了，放这里就可以了，-_-!
function Node:align(anchorPoint, x, y)
    self:setAnchorPoint(display.ANCHOR_POINTS[anchorPoint])
    if x and y then self:setPosition(x, y) end
    return self
end

function Node:schedule(callback, interval)
    local seq = transition.sequence({
        cc.DelayTime:create(interval),
        cc.CallFunc:create(callback),
    })
    local action = cc.RepeatForever:create(seq)
    self:runAction(action)
    return action
end

function Node:performWithDelay(callback, delay)
    local action = transition.sequence({
        cc.DelayTime:create(delay),
        cc.CallFunc:create(callback),
    })
    self:runAction(action)
    return action
end

function Node:getCascadeBoundingBox()
    local rc
    local func = tolua.getcfunction(self, "getCascadeBoundingBox")
    if func then
        rc = func(self)
    end

    rc.origin = {x=rc.x, y=rc.y}
    rc.size = {width=rc.width, height=rc.height}
    rc.containsPoint = isPointIn
    return rc
end
-- weiq
function Node:addNodeEventListener(ccNodeEvent, func)

end

-- function Node:removeSelf()
--     -- body
-- end

-- function Node:onEnter()
-- end

-- function Node:onExit()
-- end

-- function Node:onEnterTransitionFinish()
-- end

-- function Node:onExitTransitionStart()
-- end

-- function Node:onCleanup()
-- end

-- function Node:setNodeEventEnabled(enabled, listener)
--     if enabled then
--         if self.__node_event_handle__ then
--             self:removeNodeEventListener(self.__node_event_handle__)
--             self.__node_event_handle__ = nil
--         end

--         if not listener then
--             listener = function(event)
--                 local name = event.name
--                 if name == "enter" then
--                     self:onEnter()
--                 elseif name == "exit" then
--                     self:onExit()
--                 elseif name == "enterTransitionFinish" then
--                     self:onEnterTransitionFinish()
--                 elseif name == "exitTransitionStart" then
--                     self:onExitTransitionStart()
--                 elseif name == "cleanup" then
--                     self:onCleanup()
--                 end
--             end
--         end
--         self.__node_event_handle__ = self:addNodeEventListener(c.NODE_EVENT, listener)
--     elseif self.__node_event_handle__ then
--         self:removeNodeEventListener(self.__node_event_handle__)
--         self.__node_event_handle__ = nil
--     end
--     return self
-- end

-- function Node:removeScriptEventListenersByEvent(event)
--     PRINT_DEPRECATED("Node.removeScriptEventListenersByEvent() is deprecated, please use c.node):removeNodeEventListenersByEvent()")
--     self:removeNodeEventListenersByEvent(event)
-- end

-- function Node:registerScriptHandler(listener)
--     PRINT_DEPRECATED("Node.registerScriptHandler() is deprecated, please use Node.addNodeEventListener()")
--     return self:addNodeEventListener(c.NODE_EVENT, function(event)
--         listener(event.name)
--     end)
-- end

-- function Node:unregisterScriptHandler()
--     PRINT_DEPRECATED("Node.unregisterScriptHandler() is deprecated, please use Node.removeAllNodeEventListeners()")
--     return self:removeAllNodeEventListeners()
-- end

-- function Node:addTouchEventListener(handler)
--     PRINT_DEPRECATED("Node.addTouchEventListener() is deprecated, please use Node.addNodeEventListener()")
--     return self:addNodeEventListener(c.NODE_TOUCH_EVENT, function(event)
--         return handler(event.name, event.x, event.y, event.prevX, event.prevY)
--     end)
-- end

-- function Node:registerScriptTouchHandler(handler, isMultiTouches)
--     PRINT_DEPRECATED("Node.registerScriptTouchHandler() is deprecated, please use Node.addNodeEventListener()")
--     if isMultiTouches then
--         self:setTouchMode(c.TOUCH_MODE_ALL_AT_ONCE)
--     else
--         self:setTouchMode(c.TOUCH_MODE_ONE_BY_ONE)
--     end
--     return self:addNodeEventListener(c.NODE_TOUCH_EVENT, function(event)
--         if event.mode == c.TOUCH_MODE_ALL_AT_ONCE then
--             local points = {}
--             for id, p in pairs(event.points) do
--                 points[#points + 1] = p.x
--                 points[#points + 1] = p.y
--                 points[#points + 1] = p.id
--             end
--             return handler(event.name, points)
--         else
--             return handler(event.name, event.x, event.y, event.prevX, event.prevY)
--         end
--     end)
-- end

-- function Node:scheduleUpdate(handler)
--     PRINT_DEPRECATED("Node.scheduleUpdate(handler) is deprecated, please use Node.addNodeEventListener()")
--     if not handler then
--         handler = function(dt) self:onEnterFrame(dt) end
--     end
--     self:addNodeEventListener(c.NODE_ENTER_FRAME_EVENT, handler)
-- end

-- function Node:scheduleUpdateWithPriorityLua(handler)
--     PRINT_DEPRECATED("Node.scheduleUpdateWithPriorityLua() is deprecated, please use Node.addNodeEventListener()")
--     self:addNodeEventListener(c.NODE_ENTER_FRAME_EVENT, handler)
-- end

-- function Node:setTouchPriority()
--     PRINT_DEPRECATED("Node.setTouchPriority() is deprecated, remove it")
-- end

function Node:setKeypadEnabled(enable)
    print("···Node:setKeypadEnabled")
    self:setKeyboardEnabled(enable)
end

function Node:isKeypadEnabled()
    return self:isKeyboardEnabled()
end



--------weiq---------
-- function Layer:addKeypadEventListener(listener)
--     PRINT_DEPRECATED("Layer.addKeypadEventListener() is deprecated, please use Layer.addNodeEventListener()")
--     self:addNodeEventListener(c.KEYPAD_EVENT, function(event)
--         listener(event.key)
--     end)
-- end

-- function Layer:registerScriptKeypadHandler(listener)
--     PRINT_DEPRECATED("Layer.registerScriptKeypadHandler() is deprecated, please use Layer.addNodeEventListener()")
--     self:addNodeEventListener(c.KEYPAD_EVENT, function(event)
--         listener(event.key)
--     end)
-- end

-- function Layer:addAccelerateEventListener(listener)
--     PRINT_DEPRECATED("Layer.addAccelerateEventListener() is deprecated, please use Layer.addNodeEventListener()")
--     self:addNodeEventListener(c.ACCELERATE_EVENT, function(event)
--         listener(event.x, event.y, event.z, event.timestamp)
--     end)
-- end

-- function Layer:registerScriptAccelerateHandler(listener)
--     PRINT_DEPRECATED("Layer.registerScriptAccelerateHandler() is deprecated, please use Layer.addNodeEventListener()")
--     self:addNodeEventListener(c.ACCELERATE_EVENT, function(event)
--         listener(event.x, event.y, event.z, event.timestamp)
--     end)
-- end


function Sprite:playAnimationOnce(animation, removeWhenFinished, onComplete, delay)
    return transition.playAnimationOnce(self, animation, removeWhenFinished, onComplete, delay)
end

function Sprite:playAnimationForever(animation, delay)
    return transition.playAnimationForever(self, animation, delay)
end

-- -- NOTE!!! The method is very slowly! Please use it in carefully.
-- -- The memory will leak if you don't release it manually.
-- -- @return A Image pointer.
-- function Sprite:getImage()
--     -- Create a new Texture to get the pixel datas.
--     local __size = self:getContentSize()
--     local __rt = cc.RenderTexture:create(__size.width, __size.height)
--     -- Hold the old anchor and position to restore it late on.
--     local __oldAnchor = self:getAnchorPoint()
--     local __oldPos = self:getPosition()
--     -- Move the sprite to left bottom.
--     self:align(display.LEFT_BOTTOM, 0,0)
--     --print("getColor:", __point.x, __point.y, __size.width, __size.height)
--     -- Render the sprite to get a new texture.
--     __rt:begin()
--     self:visit()
--     __rt:endToLua()
--     -- Restore the original anchor and position.
--     self:setAnchorPoint(__oldAnchor)
--     self:setPosition(__oldPos)
--     return __rt:newImage(false)
-- end

-- -- NOTE!!! The method is very slowly! Please use it in carefully.
-- -- @param1 __point A coordinate for color.
-- -- @param1 __convertToNodeSpace Optional, default is true, convert a coordinate to node space from world space.
-- -- @param1 __isFloat Optional, default is false, convert a coordinate to node space from world space.
-- function Sprite:getColor(__point, __convertToNodeSpace, __isFloat)
--     if __convertToNodeSpace == nil then
--         __convertToNodeSpace = true
--     end
--     if __convertToNodeSpace then
--         __point = self:convertToNodeSpace(__point)
--     end
--     local __img = self:getImage()
--     local __color = nil
--     if __isFloat then
--         __color = __img:getColor4F(__point.x, __point.y)
--     else
--         __color = __img:getColor4B(__point.x, __point.y)
--     end
--     __img:release()
--     return __color
-- end

-- -- Only get a alpha value.
-- function Sprite:getColorAlpha(__point, __convertToNodeSpace, __isFloat)
--     local color = self:getColor(__point, __convertToNodeSpace, __isFloat)
--     return color.a
-- end
