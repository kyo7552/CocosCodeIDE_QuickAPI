
--------------------------------
-- @module TriggerMng

--------------------------------------------------------
-- the TInfo _eventTriggers
-- @field [parent=#TriggerMng] table#table _eventTriggers preloaded module

--------------------------------------------------------
-- the TInfo _triggerObjs
-- @field [parent=#TriggerMng] table#table _triggerObjs preloaded module

--------------------------------------------------------
-- the TInfo _movementDispatches
-- @field [parent=#TriggerMng] table#table _movementDispatches preloaded module

--------------------------------------------------------
-- the TInfo _instance
-- @field [parent=#TriggerMng] TriggerMng#TriggerMng _instance preloaded module

--------------------------------
-- @function [parent=#TriggerMng] new
-- @return table#table ret (return value: table)

--------------------------------
-- @function [parent=#TriggerMng] getInstance
-- @return table#table ret (return value: table)

--------------------------------
-- @function [parent=#TriggerMng] destroyInstance

--------------------------------
-- @function [parent=#TriggerMng] triggerMngVersion
-- @return string#string table (return value: string)

--------------------------------
-- @function [parent=#TriggerMng] parse
-- @param #string jsonStr

--------------------------------
-- @function [parent=#TriggerMng] get
-- @param #uint event
-- @return table#table ret (return value: table)

--------------------------------
-- @function [parent=#TriggerMng] getTriggerObj
-- @param #uint id
-- @return TriggerObj#TriggerObj ret (return value: ccs.TriggerObj)

--------------------------------
-- @function [parent=#TriggerMng] add
-- @param #uint event
-- @param #ccs.TriggerObj triggerObj

--------------------------------
-- @function [parent=#TriggerMng] removeAll

--------------------------------
-- @function [parent=#TriggerMng] remove
-- @param #uint event
-- @param #ccs.TriggerObj triggerObj
-- @return bool#bool ret (return value: bool)

--------------------------------
-- @function [parent=#TriggerMng] removeObjByEvent
-- @param #uint event
-- @param #ccs.TriggerObj triggerObj
-- @return bool#bool ret (return value: bool)

--------------------------------
-- @function [parent=#TriggerMng] removeTriggerObj
-- @param #uint id
-- @return bool#bool ret (return value: bool)

--------------------------------
-- @function [parent=#TriggerMng] isEmpty
-- @return bool#bool ret (return value: bool)

return nil