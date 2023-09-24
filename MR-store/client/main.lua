local RSGCore = exports['rsg-core']:GetCoreObject()
local npcs = {}
local shopItems = Config.Items

local function toggleField(enable)
    SetNuiFocus(enable, enable)
    if enable then
        SendNUIMessage({
            action = 'open'
        })
    else
        SendNUIMessage({
            action = 'close'
        })
    end
end

RegisterNUICallback('escape', function(data, cb)
    toggleField(false)
    SetNuiFocus(false, false)
    cb('ok')
end)

RegisterNUICallback('buy', function(data, cb)
    local shoppingCart = data.shoppingCart
    local totalprice = 0

    for item, v in pairs(shoppingCart) do
        local configItem = shopItems[item]
        totalprice += (v.amount * configItem.price)
    end

    RSGCore.Functions.TriggerCallback('MR-store:canAfford', function(bool)
        if (bool) then
            RSGCore.Functions.Notify(Config.Locale.buyed:format(totalprice), 'success')
        else
            RSGCore.Functions.Notify(Config.Locale.nomoney, 'error')
        end
        SetNuiFocus(not bool, not bool)
        cb(bool)
    end, totalprice, shoppingCart)
end)

local function addItem(item, display, price, description)
    SendNUIMessage({
        action = 'add',
        item = item,
        display = display,
        price = price,
        description = description,
    })
end

RegisterNetEvent('target:OpenShop', function()
	SendNUIMessage({
        action = 'clear'
    })
    for item, value2 in pairs(shopItems) do
        addItem(item, value2.display, value2.price, value2.description)
    end
    toggleField(true)
end)


CreateThread(function()


    for key,value in pairs(Config.ModelSpawns) do
        while not HasModelLoaded(value.model) do
                RequestModel(value.model)
                Wait(1)
        end
            local ped = CreatePed(value.model, value.coords.x, value.coords.y, value.coords.z - 1.0, value.heading, false, false, 0, 0)
            while not DoesEntityExist(ped) do
                Wait(1)
            end
            Citizen.InvokeNative(0x283978A15512B2FE, ped, true)
            SetEntityCanBeDamaged(ped, false)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            Wait(1)
            exports['rsg-target']:AddTargetEntity(ped, {
   
                    options = {
                    {
					    type = "client",
					    event = "target:OpenShop",
					    icon = "fas fa-atom",
					    label = "Open Shop",
						distance = 2.5,
                    }
                             }
                            })
               SetModelAsNoLongerNeeded(value.model)
            table.insert(npcs, ped)
        end
end)



CreateThread(function()
    for store, v in pairs(Config.Shops) do
        if v.showblip == true then
            local StoreBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.shopcoords)
                SetBlipSprite(StoreBlip, v.blipsprite, true)
                SetBlipScale(StoreBlip, v.blipscale)

            end
    end
end)
