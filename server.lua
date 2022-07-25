--BY CARUBY--
--PRADIT KHAMKORN--

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('airdrop:giveItem')
AddEventHandler('airdrop:giveItem', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local maxAmount = math.random(1, config.max)
	local count = 0
	local item = {}
	for i = 1, #config.items do
		item[i] = config.items[i]
		count = count + 1
	end
	local maxItem = math.random(1, count)
	xPlayer.addInventoryItem(item[maxItem], maxAmount)
end)
