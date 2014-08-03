
--------------------------------
-- @module DrawPrimitives
-- @parent_module cc

--------------------------------
-- @function [parent=#DrawPrimitives] drawPoint
-- @param #point_table point

--------------------------------
-- @function [parent=#DrawPrimitives] drawPoints
-- @param #points_table points
-- @param #int num

--------------------------------
-- @function [parent=#DrawPrimitives] drawLine
-- @param #point_table origin
-- @param #point_table destination

--------------------------------
-- @function [parent=#DrawPrimitives] drawRect
-- @param #point_table origin
-- @param #point_table destination

--------------------------------
-- @function [parent=#DrawPrimitives] drawSolidRect
-- @param #point_table origin
-- @param #point_table destination
-- @param #color4f_table color

--------------------------------
-- @function [parent=#DrawPrimitives] drawPoly
-- @param #points_table points
-- @param #uint num
-- @param #bool closePolygon


--------------------------------
-- @function [parent=#DrawPrimitives] drawSolidPoly
-- @param #points_table points
-- @param #uint num
-- @param #color4f_table color

--------------------------------
-- @function [parent=#DrawPrimitives] drawCircle
-- @param #point_table center
-- @param #float radius
-- @param #float angle
-- @param #uint segments
-- @param #bool drawLineToCenter
-- @param #float xScale
-- @param #float yScale

--------------------------------
-- @function [parent=#DrawPrimitives] drawSolidCircle
-- @param #point_table center
-- @param #float radius
-- @param #float angle
-- @param #uint segments
-- @param #float xScale
-- @param #float yScale

--------------------------------
-- @function [parent=#DrawPrimitives] drawQuadBezier
-- @param #point_table origin
-- @param #point_table control
-- @param #point_table destination
-- @param #uint segments

--------------------------------
-- @function [parent=#DrawPrimitives] drawCubicBezier
-- @param #point_table origin
-- @param #point_table control1
-- @param #point_table control2
-- @param #point_table destination
-- @param #uint segments

--------------------------------
-- @function [parent=#DrawPrimitives] drawCatmullRom
-- @param #points_table points
-- @param #uint segments

--------------------------------
-- @function [parent=#DrawPrimitives] drawCardinalSpline
-- @param #points_table config
-- @param #float tension
-- @param #uint segments

--------------------------------
-- @function [parent=#DrawPrimitives] drawColor4B
-- @param #uchar r
-- @param #uchar g
-- @param #uchar b
-- @param #uchar a


--------------------------------
-- @function [parent=#DrawPrimitives] drawColor4F
-- @param #float r
-- @param #float g
-- @param #float b
-- @param #float a

--------------------------------
-- @function [parent=#DrawPrimitives] setPointSize
-- @param #float pointSize

return nil
