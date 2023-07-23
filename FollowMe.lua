local f = CreateFrame("Frame")

f:RegisterEvent("CHAT_MSG_PARTY")
f:SetScript("OnEvent", function()
  if arg1 == "follow me" then
    FollowByName(arg2, true)
    SendChatMessage("followed", "PARTY")
  elseif arg1 == "stop" then
    FollowUnit("player")
    SendChatMessage("stoped", "PARTY")
  end
end)
