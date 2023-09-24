local RSGCore = exports['rsg-core']:GetCoreObject()

local function getFrameworkPlayerBalance(FPlayer)
	local balance = 0
	local payMethod = Config.PayMethod
	if (payMethod == 'money') then payMethod = 'cash' end
	balance = FPlayer.Functions.GetMoney(payMethod)
	return tonumber(balance)
end

local function removeFrameworkPlayerMoney(FPlayer, amount)
	local payMethod = Config.PayMethod
	FPlayer.Functions.RemoveMoney(payMethod, amount)
end

local function canAfford(source, cb, totalPrice, shoppingCart)
	local _source = source
	local FPlayer = RSGCore and RSGCore.Functions.GetPlayer(_source)
	local playerBalance = getFrameworkPlayerBalance(FPlayer)
	totalPrice = tonumber(totalPrice)

	if (playerBalance and playerBalance >= totalPrice) then
		for k, v in pairs(shoppingCart) do
			FPlayer.Functions.AddItem(k, v.amount or 1)
		end

		removeFrameworkPlayerMoney(FPlayer, totalPrice)
		cb(true)
	else
		cb(false)
	end
end

RSGCore.Functions.CreateCallback('MR-store:canAfford', canAfford)