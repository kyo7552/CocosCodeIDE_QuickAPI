
--------------------------------
-- @module Menu
-- @extend Layer
-- @parent_module cc

--------------------------------
-- @function [parent=#Menu] setEnabled 
-- @param self
-- @param #bool bool
        
--------------------------------
-- @function [parent=#Menu] alignItemsVertically 
-- @param self
        
--------------------------------
-- @function [parent=#Menu] isEnabled 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Menu] alignItemsHorizontallyWithPadding 
-- @param self
-- @param #float float
        
--------------------------------
-- @function [parent=#Menu] alignItemsVerticallyWithPadding 
-- @param self
-- @param #float float
        
--------------------------------
-- @function [parent=#Menu] alignItemsHorizontally 
-- @param self
        
--------------------------------
-- @overload self, cc.Node, int         
-- @overload self, cc.Node         
-- @overload self, cc.Node, int, int         
-- @overload self, cc.Node, int, string         
-- @function [parent=#Menu] addChild
-- @param self
-- @param #cc.Node node
-- @param #int int
-- @param #string str

--------------------------------
-- @function [parent=#Menu] isOpacityModifyRGB 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#Menu] getDescription 
-- @param self
-- @return string#string ret (return value: string)
        
--------------------------------
-- @function [parent=#Menu] setOpacityModifyRGB 
-- @param self
-- @param #bool bool
        
--------------------------------
-- @function [parent=#Menu] removeChild 
-- @param self
-- @param #cc.Node node
-- @param #bool bool
 
	



--------------------------------
-- @overload self      
-- @overload self, MenuItem, MenuItem, ...
-- @function [parent=#Menu] create 
-- @param self
-- @param #cc.MenuItem item
-- @param #cc.MenuItem item
-- @param #cc.MenuItem item ...
-- @return Menu#Menu ret (return value: cc.Menu)


--------------------------------
-- @function [parent=#Menu] alignItemsInRows 
-- @param self
-- @param #value_vector items

--------------------------------
-- @function [parent=#Menu] alignItemsInColumns 
-- @param self
-- @param #value_vector items






return nil
