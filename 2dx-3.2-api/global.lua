-------------------------------------------------------------------------------
-- @module global

-------------------------------
-- the cc module
-- @field [parent=#global] cc#cc cc preloaded module

-------------------------------
-- the ccs module
-- @field [parent=#global] ccs#ccs ccs preloaded module

-------------------------------
-- the ccui module
-- @field [parent=#global] ccui#ccui ccui preloaded module

-------------------------------
-- the ccexp module
-- @field [parent=#global] ccexp#ccexp ccexp preloaded module

-------------------------------
-- the sp module
-- @field [parent=#global] sp#sp sp preloaded module

-------------------------------
-- the ScriptHandlerMgr module
-- @field [parent=#global] ScriptHandlerMgr#ScriptHandlerMgr ScriptHandlerMgr preloaded module

-------------------------------
-- the gl module
-- @field [parent=#global] gl#gl gl preloaded module

-------------------------------
-- the AudioEngine module
-- @field [parent=#global] AudioEngine#AudioEngine AudioEngine preloaded module

-------------------------------
-- the LuaObjcBridge module
-- @field [parent=#global] LuaObjcBridge#LuaObjcBridge LuaObjcBridge preloaded module

-------------------------------
-- the LuaJavaBridge module
-- @field [parent=#global] LuaJavaBridge#LuaJavaBridge LuaJavaBridge preloaded module

-------------------------------
-- the ScriptHandlerMgr module
-- @field [parent=#global] ScriptHandlerMgr#ScriptHandlerMgr ScriptHandlerMgr preloaded module

--------------------------------
-- @function [parent=#global] CCBReaderLoad 
-- @param #string string
-- @param #cc.CCBProxy CCBProxy
-- @param #table table
-- @return Node#Node ret (return value: cc.Node)

--------------------------------
-- @function [parent=#global] ccDrawInit

--------------------------------
-- @function [parent=#global] ccDrawFree

--------------------------------
-- @function [parent=#global] ccDrawColor4f
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float

--------------------------------
-- @function [parent=#global] ccPointSize
-- @param #float float

--------------------------------
-- @function [parent=#global] ccDrawColor4B
-- @param #float float
-- @param #float float
-- @param #float float
-- @param #float float

--------------------------------
-- @function [parent=#global] ccDrawPoint
-- @param #point_table point

--------------------------------
-- @function [parent=#global] ccDrawPoints
-- @param #point_array points
-- @param #int int

--------------------------------
-- @function [parent=#global] ccDrawLine
-- @param #point_table point
-- @param #point_table point

--------------------------------
-- @function [parent=#global] ccDrawPoly
-- @param #point_array points
-- @param #int int
-- @param #bool bool

--------------------------------
-- @function [parent=#global] ccDrawSolidPoly
-- @param #point_array points
-- @param #int int
-- @param #color4f_table color4f

--------------------------------
-- @function [parent=#global] ccDrawRect
-- @param #point_table point
-- @param #point_table point

--------------------------------
-- @function [parent=#global] ccDrawSolidRect
-- @param #point_table point
-- @param #point_table point
-- @param #color4f_table color4f

--------------------------------
-- @function [parent=#global] ccDrawCircleScale
-- @param #point_table point
-- @param #float float
-- @param #float float
-- @param #int int
-- @param #bool bool
-- @param #float float
-- @param #float float

--------------------------------
-- @function [parent=#global] ccDrawCircle
-- @param #point_table point
-- @param #float float
-- @param #float float
-- @param #int int
-- @param #bool bool

--------------------------------
-- @function [parent=#global] ccDrawSolidCircle
-- @param #point_table point
-- @param #float float
-- @param #float float
-- @param #int int
-- @param #float float
-- @param #float float

--------------------------------
-- @function [parent=#global] ccDrawCubicBezier
-- @param #point_table point
-- @param #point_table point
-- @param #point_table point
-- @param #point_table point
-- @param #int int



--------------------------------
-- @function [parent=#global] clone 
-- @param #Object object
-- @return Obejct#Obejct ret (return value: Obejct)

--------------------------------
-- @function [parent=#global] class 
-- @param #string classname
-- @param #Obejct super
-- @return table#table  ret (return value: table)


--------------------------------
-- @function [parent=#global] schedule 
-- @param #cc.Node node
-- @param #function func
-- @param #float delay
-- @return RepeatForever#RepeatForever (return value: cc.RepeatForever)

--------------------------------
-- @function [parent=#global] performWithDelay 
-- @param #cc.Node node
-- @param #function func
-- @param #float delay
-- @return Sequence#Sequence (return value: cc.Sequence)

return nil
