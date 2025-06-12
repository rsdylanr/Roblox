-- Host Utilities


-- Idea 1: 
--	Announce when things happen in chat

-- Make sure that this is only working when its a player who dies and if they were killed by a player
Events.EntityDeath(function(event)
	if event.entity:getPlayer() == nil) then
		return
	end
	-- Is it a final Kill?
	if not event.finalKill then
		local isAFinalKill = false
else local isAFinalKill = true
	if local isAFinalKill == false then
		local FinalKillMessage == "The Kill was not a final kill"
	end
if isAFinalKill == true then
	 local FinalKillMessage == "the Death was a final kill"
ChatService.sendMessage(event.player.name .. " died to " event.killer:getPlayer() ", " .. local FinalKillMessage






