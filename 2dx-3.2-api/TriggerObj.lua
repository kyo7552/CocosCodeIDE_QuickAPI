
--------------------------------
-- @module TriggerObj

--------------------------------------------------------
-- the TInfo _cons
-- @field [parent=#TriggerObj] table#table _typeMap preloaded module

--------------------------------------------------------
-- the TInfo _acts
-- @field [parent=#TriggerObj] table#table _acts preloaded module

--------------------------------------------------------
-- the TInfo _enable
-- @field [parent=#TriggerObj] bool#bool _enable preloaded module

--------------------------------------------------------
-- the TInfo _id
-- @field [parent=#TriggerObj] int#int _id preloaded module

--------------------------------------------------------
-- the TInfo _vInt
-- @field [parent=#TriggerObj] table#table _vInt preloaded module

--------------------------------
-- @function [parent=#TriggerObj] new
-- @return table#table ret (return value: table)

--------------------------------
-- @function [parent=#TriggerObj] init

--------------------------------
-- @function [parent=#TriggerObj] detect

--------------------------------
-- @function [parent=#TriggerObj] done

--------------------------------
-- @function [parent=#TriggerObj] removeAll

--------------------------------
-- @function [parent=#TriggerObj] serialize
-- @param #table jsonValue

--------------------------------
-- @function [parent=#TriggerObj] getId
-- @return int#int ret (return value: int)

--------------------------------
-- @function [parent=#TriggerObj] setEnable
-- @param #bool enable

--------------------------------
-- @function [parent=#TriggerObj] getEvents
-- @return table#table ret (return value: table)

return nil