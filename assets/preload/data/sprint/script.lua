local allowCountdown = false
local endstops = 0

function onStartCountdown()
setPropertyFromClass('GameOverSubstate', 'characterName', 'hdbf-dead');
	if not allowCountdown and isStoryMode and not seenCutscene then
		startVideo('intro');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onEndSong()
	endstops = endstops + 1
	if isStoryMode then
		if endstops == 1 then
			startVideo('outro')
			return Function_Stop;
		end
	end
	 return Function_Continue;
end