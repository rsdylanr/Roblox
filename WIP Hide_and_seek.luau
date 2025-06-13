-- Notes
-- To Do
 -- Host is seeker
 -- All other players are hiders
 -- Hider Team is Blue
 -- Seeker team is Red
-- Host Gets items (Rageblade, arrows[infinite amounts] tactical_crossbow, 
-- Hider is eliminated when they die
-- Attempt to make a timer for when the host can start seeking
Local seeker
Local hiders = 
-- When the match starts

function(GameStartingAnnouncements)
    -- Announce that the match has started in multiple ways
    local gameStartingMessage = "MATCH IS STARTING NOW" -- Defines the message that is said so that we dont have to type this multiple times
    ChatService.sendMessage(gameStartingMessage) -- sends a chat message
    AnnouncementService.sendAnnouncement(gameStartingMessage) -- Sends an announcement
    MessageService.broadcast(gameStartingMessage) -- sends a prompt
------------------------
-- Setting Up Teams.     --
function(PreparingTeams)
    ----------------------------
    MessageService.broadcast("Preparing teams")
    for i team in iPairs(TeamService:getAllTeams()) do
    if team.name == "Red" then
        seeker = team
            print("Team Red Succesfuly set to seeker")
    elseif Team.name == "Blue" then
        hiders = team
        print("team name successfully set blue to hiders")
    end
for i, player in ipairs(PlayerService.getPlayers()) do
    if player == MatchService.getHost()
    then
        TeamService.setTeam(player,seeker)
    else TeamService.setTeam(player, hiders)

-------------------------------------------

-- Timer --
function(setTimers)
    wait(2)
    MessageService.broadcast("A 3 minute timer is starting, you haev until this timer ends to hide")
    local timer = 3*60
    




events.MatchStart(function(event)
    GameStartingAnnouncements()
    task.wait(2)
    PreparingTeams()
    MessageService.broadcast("Set Teams Success")



