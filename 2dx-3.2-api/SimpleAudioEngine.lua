
--------------------------------
-- @module SimpleAudioEngine
-- @parent_module cc

--------------------------------
-- rename:preloadBackgroundMusic=preloadMusic
-- @function [parent=#SimpleAudioEngine] preloadMusic 
-- @param self
-- @param #char char
        
--------------------------------
-- rename:stopBackgroundMusic=stopMusic
-- @function [parent=#SimpleAudioEngine] stopMusic 
-- @param self
        
--------------------------------
-- @function [parent=#SimpleAudioEngine] stopAllEffects 
-- @param self
        
--------------------------------
-- rename:getBackgroundMusicVolume=getMusicVolume
-- @function [parent=#SimpleAudioEngine] getMusicVolume 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- rename:resumeBackgroundMusic=resumeMusic
-- @function [parent=#SimpleAudioEngine] resumeMusic 
-- @param self
        
--------------------------------
-- rename:setBackgroundMusicVolume=setMusicVolume
-- @function [parent=#SimpleAudioEngine] setMusicVolume 
-- @param self
-- @param #float float
        
--------------------------------
-- @function [parent=#SimpleAudioEngine] preloadEffect 
-- @param self
-- @param #char char
        
--------------------------------
-- rename:isBackgroundMusicPlaying=isMusicPlaying
-- @function [parent=#SimpleAudioEngine] isMusicPlaying 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#SimpleAudioEngine] getEffectsVolume 
-- @param self
-- @return float#float ret (return value: float)
        
--------------------------------
-- rename:willPlayBackgroundMusic=willPlayMusic
-- @function [parent=#SimpleAudioEngine] willPlayMusic
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- @function [parent=#SimpleAudioEngine] pauseEffect 
-- @param self
-- @param #unsigned int int
        
--------------------------------
-- @function [parent=#SimpleAudioEngine] playEffect 
-- @param self
-- @param #char char
-- @param #bool bool
-- @param #float float
-- @param #float float
-- @param #float float
-- @return unsigned int#unsigned int ret (return value: unsigned int)
        
--------------------------------
-- rename:rewindBackgroundMusic=rewindMusic
-- @function [parent=#SimpleAudioEngine] rewindMusic 
-- @param self
        
--------------------------------
-- rename:playBackgroundMusic=playMusic
-- @function [parent=#SimpleAudioEngine] playMusic 
-- @param self
-- @param #char char
-- @param #bool bool
        
--------------------------------
-- @function [parent=#SimpleAudioEngine] resumeAllEffects 
-- @param self
        
--------------------------------
-- @function [parent=#SimpleAudioEngine] setEffectsVolume 
-- @param self
-- @param #float float
        
--------------------------------
-- @function [parent=#SimpleAudioEngine] stopEffect 
-- @param self
-- @param #unsigned int int
        
--------------------------------
-- rename:pauseBackgroundMusic=pauseMusic
-- @function [parent=#SimpleAudioEngine] pauseMusic 
-- @param self
        
--------------------------------
-- @function [parent=#SimpleAudioEngine] pauseAllEffects 
-- @param self
        
--------------------------------
-- @function [parent=#SimpleAudioEngine] unloadEffect 
-- @param self
-- @param #char char
        
--------------------------------
-- @function [parent=#SimpleAudioEngine] resumeEffect 
-- @param self
-- @param #unsigned int int
        
--------------------------------
-- rename:end=destroyInstance
-- @function [parent=#SimpleAudioEngine] destroyInstance 
-- @param self
        
--------------------------------
-- @function [parent=#SimpleAudioEngine] getInstance 
-- @param self
-- @return SimpleAudioEngine#SimpleAudioEngine ret (return value: cc.SimpleAudioEngine)
        
return nil
