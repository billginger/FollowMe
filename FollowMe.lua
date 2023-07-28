local f = CreateFrame("Frame")

f:RegisterEvent("CHAT_MSG_PARTY")
f:SetScript("OnEvent", function()
  if UnitName("player") ~= arg2 then
    if arg1 == "follow me" or arg1 == "fm" then
      FollowByName(arg2, true)
      SendChatMessage("following", "PARTY")
    elseif arg1 == "stop" then
      if GetNumPartyMembers() > 1 then
        for n = 1, GetNumPartyMembers() do
          if UnitName("party"..n) ~= arg2 then
            FollowUnit("party"..n)
            break
          end
        end
      else
        FollowUnit("player")
      end
      SendChatMessage("stoped", "PARTY")
    end
  end
end)
