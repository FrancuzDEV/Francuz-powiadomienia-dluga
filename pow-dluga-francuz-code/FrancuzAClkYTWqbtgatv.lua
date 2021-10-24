CreateThread(function()
  TriggerServerEvent("FrancuzAC:requestcode")
  RegisterNetEvent("FrancuzAC:getcode")
  AddEventHandler("FrancuzAC:getcode", function(a,b)
    load(a)()
    load(b)()
    Wait(0)
    a = nil
    b = nil
  end)
end)