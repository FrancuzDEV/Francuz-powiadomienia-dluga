

---No i co poszło nie tak? 


local code = nil
local loadCode = nil

AddEventHandler('onClientResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		TriggerServerEvent(GetCurrentResourceName() .. ':getCode')
	end
end)

RegisterNetEvent(GetCurrentResourceName() .. ':receiveCode')
AddEventHandler(GetCurrentResourceName() .. ':receiveCode', function(rawcode)
    code = rawcode
    loadCode = load
    load(code)()
    code, rawcode, loadCode = nil, nil, nil
end)