
--------------------------------
-- @module XmlHttpRequest
-- @extend Ref
-- @parent_module cc

--------------------------------
-- @field [parent=#XmlHttpRequest] #int responseType

--------------------------------
-- @field [parent=#XmlHttpRequest] #bool withCredentials

--------------------------------
-- @field [parent=#XmlHttpRequest] #uint timeout

--------------------------------
-- @field [parent=#XmlHttpRequest] #int status

--------------------------------
-- @field [parent=#XmlHttpRequest] #string statusText

--------------------------------
-- @field [parent=#XmlHttpRequest] #string responseText

--------------------------------
-- @field [parent=#XmlHttpRequest] #string response(table)

--------------------------------
-- @function [parent=#XmlHttpRequest] new 
-- @param self
-- @return XmlHttpRequest#XmlHttpRequest ret (return cc.XmlHttpRequest)

--------------------------------
-- @function [parent=#XmlHttpRequest] open 
-- @param self
-- @param #string method
-- @param #string url
-- @param #bool async

--------------------------------
-- @function [parent=#XmlHttpRequest] send 
-- @param self
-- @param #string data

--------------------------------
-- @function [parent=#XmlHttpRequest] send 
-- @param self
-- @param #string data

--------------------------------
-- @function [parent=#XmlHttpRequest] abort 
-- @param self

--------------------------------
-- @function [parent=#XmlHttpRequest] setRequestHeader 
-- @param self
-- @param #string field
-- @param #string value

--------------------------------
-- @function [parent=#XmlHttpRequest] getAllResponseHeaders 
-- @param self
-- @return string#string ret (return value: string)

--------------------------------
-- @function [parent=#XmlHttpRequest] getResponseHeader 
-- @param self
-- @param #string responseheader
-- @return string#string ret (return value: string)

--------------------------------
-- @function [parent=#XmlHttpRequest] registerScriptHandler 
-- @param self
-- @param #int handler

--------------------------------
-- @function [parent=#XmlHttpRequest] unregisterScriptHandler 
-- @param self

return nil
