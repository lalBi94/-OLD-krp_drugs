ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Triggers
RegisterNetEvent("Zod#8682::recoltWeed")
RegisterNetEvent("Zod#8682::treatWeed")
RegisterNetEvent("Zod#8682::selltWeed")

RegisterNetEvent("Zod#8682::recoltCoca")
RegisterNetEvent("Zod#8682::treatCoca")
RegisterNetEvent("Zod#8682::selltCoca")

RegisterNetEvent("Zod#8682::recoltMeth")
RegisterNetEvent("Zod#8682::treatMeth")
RegisterNetEvent("Zod#8682::sellMeth")

range = 10

-- Name of items
items = {
    weedrec = "weedbrute", 
    weedtreat = "weedemballage",
    cocarec = "cokebrute",
    cocatreat = "cokeemballage",
    methrec = "methbrute",
    methtreat = "methemballage"
}

-- Drugs price (in black money)
prices = {
    weed = 10,
    coca = 60,
    meth = 27
}

-- Position of the points to detect an "illegal" trigger
location = {
    weed = {
        weedrecolt = vector3(-179.314, 855.187, 232.699),
        weedtreat = vector3(-165.262, 858.661, 232.233),
        weedsell = vector3(-176.168, 868.195, 232.700)
    },
    
    coca = {
        cocarecolt = vector3(-182.115, 880.650, 233.464),
        cocatreatment = vector3(-170.133, 886.724, 233.465),
        cocasell = vector3(-182.545, 899.048, 233.464)
    },

    meth = {
        methrecolt = vector3(-142.746, 867.146, 232.697),
        methtreatment = vector3(-132.172, 855.543, 232.229),
        methsell = vector3(-152.347, 861.427, 232.233)
    }
}

-- Sentence said
notif = {
    weed = {
        weederr = {
            weedfinish = "~r~Vous n'avez plus de Weed Brute !",
            noweed = "~r~Vous n'avez pas de Weed Brute !",
            noweedtosell = "~r~Vous n'avez pas de Weed à vendre !",
            weedtreatfinish = "~r~Vous n'avez plus de Weed à vendre !"
        }
    },
    
    coca = {
        cocaerr = {
            cocafinish = "~r~Vous n'avez plus de Cocaïne Brute !",
            nococa = "~r~Vous n'avez pas de Cocaïne Brute !",
            nococatosell = "~r~Vous n'avez pas de Cocaïne à vendre !",
            cocatreatfinish = "~r~Vous n'avez plus de Cocaïne à vendre !"
        }
    },
    
    meth = {
        metherr = {
            methfinish = "~r~Vous n'avez plus de Méthamphétamine Brute !",
            nometh = "~r~Vous n'avez pas de Méthamphétamine Brute !",
            nomethtosell = "~r~Vous n'avez pas de Méthamphétamine à vendre !",
            methtreatfinish = "~r~Vous n'avez plus de Méthamphétamine à vendre !"
        }
    },
    
    bonus = {
        -- Doing an action (kick/ban) is more recommendable than sending him this :)
        cheat = "~r~Tu cheat ?"
    }
}

AddEventHandler("Zod#8682::recoltWeed", function()
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local coords = xPlayer.getCoords(true)
    
    if(#(vector3(coords.x, coords.y, coords.z) - location.weed.weedrecolt) > range) then
        TriggerClientEvent('esx:showNotification', _src, notif.bonus.cheat)
        return
    else
        xPlayer.addInventoryItem(items.weedrec, 1)
    end
end)

AddEventHandler("Zod#8682::treatWeed", function()
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local coords = xPlayer.getCoords(true)
    local itsPossible = xPlayer.getInventoryItem(items.weedrec).count

    if(itsPossible == 0 or itsPossible < 0) then
        TriggerClientEvent('esx:showNotification', _src, notif.weed.weederr.noweed)
        return
    end

    if(itsPossible == 1) then
        TriggerClientEvent('esx:showNotification', _src, notif.weed.weederr.weedfinish)
    end
    
    if(#(vector3(coords.x, coords.y, coords.z) - location.weed.weedtreat) > range and itsPossible > 0) then
        TriggerClientEvent('esx:showNotification', _src, notif.bonus.cheat)
        return
    else
        xPlayer.removeInventoryItem(items.weedrec, 1)
        xPlayer.addInventoryItem(items.weedtreat, 1)
    end
end)

AddEventHandler("Zod#8682::selltWeed", function() 
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local coords = xPlayer.getCoords(true)
    local itsPossible = xPlayer.getInventoryItem(items.weedtreat).count

    if(itsPossible == 0 or itsPossible < 0) then
        TriggerClientEvent('esx:showNotification', _src, notif.weed.weederr.noweedtosell)
        return
    end

    if(itsPossible == 1) then
        TriggerClientEvent('esx:showNotification', _src, notif.weed.weederr.weedtreatfinish)
    end
    
    if(#(vector3(coords.x, coords.y, coords.z) - location.weed.weedsell) > range and itsPossible > 0) then
        TriggerClientEvent('esx:showNotification', _src, notif.bonus.cheat)
        return
    else
        xPlayer.removeInventoryItem(items.weedtreat, 1)
        xPlayer.addAccountMoney('black_money', prices.weed)
    end
end)

AddEventHandler("Zod#8682::recoltCoca", function()
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local coords = xPlayer.getCoords(true)
    
    if(#(vector3(coords.x, coords.y, coords.z) - location.coca.cocarecolt) > range) then
        TriggerClientEvent('esx:showNotification', _src, notif.bonus.cheat)
        return
    else
        xPlayer.addInventoryItem(items.cocarec, 1)
    end
end)

AddEventHandler("Zod#8682::treatCoca", function()
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local coords = xPlayer.getCoords(true)
    local itsPossible = xPlayer.getInventoryItem(items.cocarec).count

    if(itsPossible == 0 or itsPossible < 0) then
        TriggerClientEvent('esx:showNotification', _src, notif.coca.cocaerr.nococa)
        return
    end

    if(itsPossible == 1) then
        TriggerClientEvent('esx:showNotification', _src, notif.coca.cocaerr.cocafinish)
    end
    
    if(#(vector3(coords.x, coords.y, coords.z) - location.coca.cocatreatment) > range and itsPossible > 0) then
        TriggerClientEvent('esx:showNotification', _src, notif.bonus.cheat)
        return
    else
        xPlayer.removeInventoryItem(items.cocarec, 1)
        xPlayer.addInventoryItem(items.cocatreat, 1)
    end
end)

AddEventHandler("Zod#8682::selltCoca", function() 
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local coords = xPlayer.getCoords(true)
    local itsPossible = xPlayer.getInventoryItem(items.cocatreat).count

    if(itsPossible == 0 or itsPossible < 0) then
        TriggerClientEvent('esx:showNotification', _src, notif.coca.cocaerr.nococatosell)
        return
    end

    if(itsPossible == 1) then
        TriggerClientEvent('esx:showNotification', _src, notif.coca.cocaerr.cocatreatfinish)
    end
    
    if(#(vector3(coords.x, coords.y, coords.z) - location.coca.cocasell) > range and itsPossible > 0) then
        TriggerClientEvent('esx:showNotification', _src, notif.bonus.cheat)
        return
    else
        xPlayer.removeInventoryItem(items.cocatreat, 1)
        xPlayer.addAccountMoney('black_money', prices.coca)
    end
end)

AddEventHandler("Zod#8682::recoltMeth", function()
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local coords = xPlayer.getCoords(true)
    
    if(#(vector3(coords.x, coords.y, coords.z) - location.meth.methrecolt) > range) then
        TriggerClientEvent('esx:showNotification', _src, notif.bonus.cheat)
        return
    else
        xPlayer.addInventoryItem(items.methrec, 1)
    end
end)

AddEventHandler("Zod#8682::treatMeth", function()
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local coords = xPlayer.getCoords(true)
    local itsPossible = xPlayer.getInventoryItem(items.methrec).count

    if(itsPossible == 0 or itsPossible < 0) then
        TriggerClientEvent('esx:showNotification', _src, notif.meth.metherr.nometh)
        return
    end

    if(itsPossible == 1) then
        TriggerClientEvent('esx:showNotification', _src, notif.meth.metherr.methfinish)
    end
    
    if(#(vector3(coords.x, coords.y, coords.z) - location.meth.methtreatment) > range and itsPossible > 0) then
        TriggerClientEvent('esx:showNotification', _src, notif.bonus.cheat)
        return
    else
        xPlayer.removeInventoryItem(items.methrec, 1)
        xPlayer.addInventoryItem(items.methtreat, 1)
    end
end)

AddEventHandler("Zod#8682::sellMeth", function() 
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local coords = xPlayer.getCoords(true)
    local itsPossible = xPlayer.getInventoryItem(items.methtreat).count

    if(itsPossible == 0 or itsPossible < 0) then
        TriggerClientEvent('esx:showNotification', _src, notif.meth.metherr.nomethtosell)
        return
    end

    if(itsPossible == 1) then
        TriggerClientEvent('esx:showNotification', _src, notif.meth.metherr.methtreatfinish)
    end
    
    if(#(vector3(coords.x, coords.y, coords.z) - location.meth.methsell) > range) then
        TriggerClientEvent('esx:showNotification', _src, notif.bonus.cheat)
        return
    else
        xPlayer.removeInventoryItem(items.methtreat, 1)
        xPlayer.addAccountMoney('black_money', prices.meth)
    end
end)