local f = CreateFrame("Frame")

f:RegisterEvent("CHAT_MSG_PARTY")
f:SetScript("OnEvent", function()
  if UnitName("player") ~= arg2 then
    if arg1 == "follow me" then
      FollowByName(arg2, true)
      SendChatMessage("following", "PARTY")
    elseif arg1 == "stop" then
      FollowUnit("player")
      SendChatMessage("stoped", "PARTY")
    end
  end
end)
