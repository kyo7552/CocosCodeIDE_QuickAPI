
--------------------------------
-- @module WebSocket
-- @parent_module cc

--------------------------------
-- @function [parent=#WebSocket] create 
-- @param self
-- @param #string urlName
-- @return WebSocket#WebSocket ret (return cc.WebSocket)

--------------------------------
-- @function [parent=#WebSocket] createByAProtocol 
-- @param self
-- @param #string urlName
-- @param #string protocol
-- @return WebSocket#WebSocket ret (return cc.WebSocket)

--------------------------------
-- @function [parent=#WebSocket] createByProtocolArray 
-- @param self
-- @param #string urlName
-- @param #array_table protocolArray
-- @return WebSocket#WebSocket ret (return cc.WebSocket)


--------------------------------
-- @function [parent=#WebSocket] getReadyState 
-- @param self
-- @return int#int ret (return int)

--------------------------------
-- @function [parent=#WebSocket] close 
-- @param self

--------------------------------
-- @function [parent=#WebSocket] sendString 
-- @param self
-- @param #string data

--------------------------------
-- @function [parent=#WebSocket] registerScriptHandler 
-- @param self
-- @param #function handler
-- @param #HandlerType type

--------------------------------
-- @function [parent=#WebSocket] unregisterScriptHandler 
-- @param self

return nil
