Citizen.CreateThread(function()
    print("^6Zod#8682 ^0:: for :: ^5Dream^0Role^1Play")
    while(true) do
        Citizen.Wait(1)

        -- Weed
        if(#(Config.weedrecolt - GetEntityCoords(PlayerPedId(-1))) < Config.toBeVisible) then
            if(Config.inAction) then
                if(IsPedInAnyVehicle(PlayerPedId(-1))) then
                    AddTextEntry("inveh", "~r~Veuillez descendre de votre vehicule !")
                    DisplayHelpTextThisFrame("inveh", false)
                else
                    AddTextEntry("weedrecolt", "Appuyer sur ~INPUT_CONTEXT~ pour recolter de la ~g~Weed")
                    DisplayHelpTextThisFrame("weedrecolt", false)
                end
            end 
            
            if(not Config.inAction) then
                AddTextEntry("weedrecolt", "Appuyer sur ~INPUT_JUMP~ pour arreter de recolter de la ~g~Weed")
                DisplayHelpTextThisFrame("weedrecolt", false)
            end

            DrawMarker(27, Config.weedrecolt.x, Config.weedrecolt.y, (Config.weedrecolt.z-0.99), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, Config.color.r, Config.color.g, Config.color.b, 170, 0, 1, 2, 0, nil, nil, 0)
            if(IsControlJustPressed(1, Config.keyInteract) and not IsPedInAnyVehicle(PlayerPedId(-1))) then
                Config.inAction = false
                drp_drug(Config.weed, "recolt")
            end
        end

        if(#(Config.weedtreatment - GetEntityCoords(PlayerPedId(-1))) < Config.toBeVisible) then
            if(Config.inAction) then
                if(IsPedInAnyVehicle(PlayerPedId(-1))) then
                    AddTextEntry("inveh", "~r~Veuillez descendre de votre vehicule !")
                    DisplayHelpTextThisFrame("inveh", false)
                else
                    AddTextEntry("weedtreat", "Appuyer sur ~INPUT_CONTEXT~ pour traiter votre ~g~Weed")
                    DisplayHelpTextThisFrame("weedtreat", false)
                end
            end
            
            if(not Config.inAction) then
                AddTextEntry("weedtreat", "Appuyer sur ~INPUT_JUMP~ pour arreter de traiter de la ~g~Weed")
                DisplayHelpTextThisFrame("weedtreat", false)
            end

            DrawMarker(27, Config.weedtreatment.x, Config.weedtreatment.y, (Config.weedtreatment.z-0.99), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, Config.color.r, Config.color.g, Config.color.b, 170, 0, 1, 2, 0, nil, nil, 0)
            if(IsControlJustPressed(1, Config.keyInteract) and not IsPedInAnyVehicle(PlayerPedId(-1))) then
                Config.inAction = false
                drp_drug(Config.weed, "treatment")
            end
        end

        if(#(Config.weedsell - GetEntityCoords(PlayerPedId(-1))) < Config.toBeVisible) then
            if(Config.inAction) then
                if(IsPedInAnyVehicle(PlayerPedId(-1))) then
                    AddTextEntry("inveh", "~r~Veuillez descendre de votre vehicule !")
                    DisplayHelpTextThisFrame("inveh", false)
                else
                    AddTextEntry("weedsell", "Appuyer sur ~INPUT_CONTEXT~ pour vendre votre ~g~Weed")
                    DisplayHelpTextThisFrame("weedsell", false)
                end
            end

            if(not Config.inAction) then
                AddTextEntry("weedrecolt", "Appuyer sur ~INPUT_JUMP~ pour arreter de vendre de la ~g~Weed")
                DisplayHelpTextThisFrame("weedrecolt", false)
            end

            DrawMarker(27, Config.weedsell.x, Config.weedsell.y, (Config.weedsell.z-0.99), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, Config.color.r, Config.color.g, Config.color.b, 170, 0, 1, 2, 0, nil, nil, 0)
            if(IsControlJustPressed(1, Config.keyInteract) and not IsPedInAnyVehicle(PlayerPedId(-1))) then
                Config.inAction = false
                drp_drug(Config.weed, "sell")
            end
        end
        
        -- Cocaïne
        if(#(Config.cocainerecolt - GetEntityCoords(PlayerPedId(-1))) < Config.toBeVisible) then
            if(Config.inAction) then
                if(IsPedInAnyVehicle(PlayerPedId(-1))) then
                    AddTextEntry("inveh", "~r~Veuillez descendre de votre vehicule !")
                    DisplayHelpTextThisFrame("inveh", false)
                else
                    AddTextEntry("cocarecolt", "Appuyer sur ~INPUT_CONTEXT~ pour recolter de la ~r~ Cocaine")
                    DisplayHelpTextThisFrame("cocarecolt", false)
                end
            end 
            
            if(not Config.inAction) then
                AddTextEntry("cocarecolt", "Appuyer sur ~INPUT_JUMP~ pour arreter de recolter de la ~r~ Cocaine")
                DisplayHelpTextThisFrame("cocarecolt", false)
            end

            DrawMarker(27, Config.cocainerecolt.x, Config.cocainerecolt.y, (Config.cocainerecolt.z-0.99), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, Config.colorcock.r, Config.colorcock.g, Config.colorcock.b, 170, 0, 1, 2, 0, nil, nil, 0)
            if(IsControlJustPressed(1, Config.keyInteract) and not IsPedInAnyVehicle(PlayerPedId(-1))) then
                Config.inAction = false
                drp_drug(Config.cocaine, "recolt")
            end
        end

        if(#(Config.cocainetreatment - GetEntityCoords(PlayerPedId(-1))) < Config.toBeVisible) then
            if(Config.inAction) then
                if(IsPedInAnyVehicle(PlayerPedId(-1))) then
                    AddTextEntry("inveh", "~r~Veuillez descendre de votre vehicule !")
                    DisplayHelpTextThisFrame("inveh", false)
                else
                    AddTextEntry("cocatreat", "Appuyer sur ~INPUT_CONTEXT~ pour traiter votre ~r~Cocaïne")
                    DisplayHelpTextThisFrame("cocatreat", false)
                end
            end
            
            if(not Config.inAction) then
                AddTextEntry("cocatreat", "Appuyer sur ~INPUT_JUMP~ pour arreter de traiter de la ~r~Cocaïne")
                DisplayHelpTextThisFrame("cocatreat", false)
            end

            DrawMarker(27, Config.cocainetreatment.x, Config.cocainetreatment.y, (Config.cocainetreatment.z-0.99), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, Config.colorcock.r, Config.colorcock.g, Config.colorcock.b, 170, 0, 1, 2, 0, nil, nil, 0)
            if(IsControlJustPressed(1, Config.keyInteract) and not IsPedInAnyVehicle(PlayerPedId(-1))) then
                Config.inAction = false
                drp_drug(Config.cocaine, "treatment")
            end
        end

        if(#(Config.cocainesell - GetEntityCoords(PlayerPedId(-1))) < Config.toBeVisible) then
            if(Config.inAction) then
                if(IsPedInAnyVehicle(PlayerPedId(-1))) then
                    AddTextEntry("inveh", "~r~Veuillez descendre de votre vehicule !")
                    DisplayHelpTextThisFrame("inveh", false)
                else
                    AddTextEntry("cocainesell", "Appuyer sur ~INPUT_CONTEXT~ pour vendre votre ~r~Cocaïne")
                    DisplayHelpTextThisFrame("cocainesell", false)
                end
            end

            if(not Config.inAction) then
                AddTextEntry("cocainesell", "Appuyer sur ~INPUT_JUMP~ pour arreter de vendre de la ~r~Cocaïne")
                DisplayHelpTextThisFrame("cocainesell", false)
            end

            DrawMarker(27, Config.cocainesell.x, Config.cocainesell.y, (Config.cocainesell.z-0.99), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, Config.colorcock.r, Config.colorcock.g, Config.colorcock.b, 170, 0, 1, 2, 0, nil, nil, 0)
            if(IsControlJustPressed(1, Config.keyInteract) and not IsPedInAnyVehicle(PlayerPedId(-1))) then
                Config.inAction = false
                drp_drug(Config.cocaine, "sell")
            end
        end

        -- Méthamphétamine
        if(#(Config.methrecolt - GetEntityCoords(PlayerPedId(-1))) < Config.toBeVisible) then
            if(Config.inAction) then
                if(IsPedInAnyVehicle(PlayerPedId(-1))) then
                    AddTextEntry("inveh", "~r~Veuillez descendre de votre vehicule !")
                    DisplayHelpTextThisFrame("inveh", false)
                else
                    AddTextEntry("methrecolt", "Appuyer sur ~INPUT_CONTEXT~ pour recolter de la ~b~Méthamphétamine")
                    DisplayHelpTextThisFrame("methrecolt", false)
                end
            end 
            
            if(not Config.inAction) then
                AddTextEntry("methrecolt", "Appuyer sur ~INPUT_JUMP~ pour arreter de recolter de la ~b~Méthamphétamine")
                DisplayHelpTextThisFrame("methrecolt", false)
            end

            DrawMarker(27, Config.methrecolt.x, Config.methrecolt.y, (Config.methrecolt.z-0.99), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, Config.colormeth.r, Config.colormeth.g, Config.colormeth.b, 170, 0, 1, 2, 0, nil, nil, 0)
            if(IsControlJustPressed(1, Config.keyInteract) and not IsPedInAnyVehicle(PlayerPedId(-1))) then
                Config.inAction = false
                drp_drug(Config.meth, "recolt")
            end
        end

        if(#(Config.methtreatment - GetEntityCoords(PlayerPedId(-1))) < Config.toBeVisible) then
            if(Config.inAction) then
                if(IsPedInAnyVehicle(PlayerPedId(-1))) then
                    AddTextEntry("inveh", "~r~Veuillez descendre de votre vehicule !")
                    DisplayHelpTextThisFrame("inveh", false)
                else
                    AddTextEntry("methtreat", "Appuyer sur ~INPUT_CONTEXT~ pour traiter votre ~b~Méthamphétamine")
                    DisplayHelpTextThisFrame("methtreat", false)
                end
            end
            
            if(not Config.inAction) then
                AddTextEntry("methtreat", "Appuyer sur ~INPUT_JUMP~ pour arreter de traiter de la ~b~Méthamphétamine")
                DisplayHelpTextThisFrame("methtreat", false)
            end

            DrawMarker(27, Config.methtreatment.x, Config.methtreatment.y, (Config.methtreatment.z-0.99), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, Config.colormeth.r, Config.colormeth.g, Config.colormeth.b, 170, 0, 1, 2, 0, nil, nil, 0)
            if(IsControlJustPressed(1, Config.keyInteract) and not IsPedInAnyVehicle(PlayerPedId(-1))) then
                Config.inAction = false
                drp_drug(Config.meth, "treatment")
            end
        end

        if(#(Config.methsell - GetEntityCoords(PlayerPedId(-1))) < Config.toBeVisible) then
            if(Config.inAction) then
                if(IsPedInAnyVehicle(PlayerPedId(-1))) then
                    AddTextEntry("inveh", "~r~Veuillez descendre de votre vehicule !")
                    DisplayHelpTextThisFrame("inveh", false)
                else
                    AddTextEntry("methsell", "Appuyer sur ~INPUT_CONTEXT~ pour vendre votre ~b~Méthamphétamine")
                    DisplayHelpTextThisFrame("methsell", false)
                end
            end

            if(not Config.inAction) then
                AddTextEntry("methsell", "Appuyer sur ~INPUT_JUMP~ pour arreter de vendre de la ~b~Méthamphétamine")
                DisplayHelpTextThisFrame("methsell", false)
            end

            DrawMarker(27, Config.methsell.x, Config.methsell.y, (Config.methsell.z-0.99), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, Config.colormeth.r, Config.colormeth.g, Config.colormeth.b, 170, 0, 1, 2, 0, nil, nil, 0)
            if(IsControlJustPressed(1, Config.keyInteract) and not IsPedInAnyVehicle(PlayerPedId(-1))) then
                Config.inAction = false
                drp_drug(Config.meth, "sell")
            end
        end
    end
end)

function remove(anim) 
    RemoveAnimDict(anim)
end

function drp_drug(drug, action) -- action = recolt, treatment, sell
    playerPed = PlayerPedId()
    playerPos = GetEntityCoords(playerPed)
    Config.toggleFocusOn = true

    if(action == "recolt") then
        Citizen.CreateThread(function()
            while(Config.toggleFocusOn) do
                Citizen.CreateThread(function() 
                    while(true) do
                        Citizen.Wait(1)

                        if(IsControlJustPressed(1, Config.keyStopInteract)) then
                            remove(Config.anim.recolt.animation)
                            FreezeEntityPosition(playerPed, false)
                            Config.inAction = true
                            Config.toggleFocusOn = false
                        end
                    end
                end)
                
                RequestAnimDict(Config.anim.recolt.animation)
                while (not HasAnimDictLoaded(Config.anim.recolt.animation)) do
                    Citizen.Wait(0)
                end

                TaskPlayAnim(playerPed, Config.anim.recolt.animation, Config.anim.recolt.name, 8.0, 8.0, 3000, 48, 1, false, false, false)
                FreezeEntityPosition(playerPed, true)
                Citizen.Wait(delay)
                remove(Config.anim.recolt.animation)
                Citizen.Wait(2000)

                if(drug == Config.weed) then
                    TriggerServerEvent("Zod#8682::recoltWeed")
                end

                if(drug == Config.cocaine) then
                    TriggerServerEvent("Zod#8682::recoltCoca")
                end

                if(drug == Config.meth) then
                    TriggerServerEvent("Zod#8682::recoltMeth")
                end

                Citizen.Wait(1)
            end
        end)
    end

    if(action == "treatment") then
        Citizen.CreateThread(function()
            while(Config.toggleFocusOn) do
                Citizen.CreateThread(function() 
                    while(true) do
                        Citizen.Wait(1)

                        if(IsControlJustPressed(1, Config.keyStopInteract)) then
                            remove(Config.anim.recolt.animation)
                            FreezeEntityPosition(playerPed, false)
                            Config.inAction = true
                            Config.toggleFocusOn = false
                        end
                    end
                end)
                
                RequestAnimDict(Config.anim.recolt.animation)
                while (not HasAnimDictLoaded(Config.anim.recolt.animation)) do
                    Citizen.Wait(0)
                end

                TaskPlayAnim(playerPed, Config.anim.recolt.animation, Config.anim.recolt.name, 8.0, 8.0, 3000, 48, 1, false, false, false)
                FreezeEntityPosition(playerPed, true)
                Citizen.Wait(delay)
                remove(Config.anim.recolt.animation)
                Citizen.Wait(2000)

                if(drug == Config.weed) then
                    TriggerServerEvent("Zod#8682::treatWeed")
                end

                if(drug == Config.cocaine) then
                    TriggerServerEvent("Zod#8682::treatCoca")
                end

                if(drug == Config.meth) then
                    TriggerServerEvent("Zod#8682::treatMeth")
                end

                Citizen.Wait(1)
            end
        end)
    end

    if(action == "sell") then
        Citizen.CreateThread(function()
            while(Config.toggleFocusOn) do
                Citizen.CreateThread(function() 
                    while(true) do
                        Citizen.Wait(1)

                        if(IsControlJustPressed(1, Config.keyStopInteract)) then
                            remove(Config.anim.recolt.animation)
                            FreezeEntityPosition(playerPed, false)
                            Config.inAction = true
                            Config.toggleFocusOn = false
                        end
                    end
                end)
                
                RequestAnimDict(Config.anim.recolt.animation)
                while (not HasAnimDictLoaded(Config.anim.recolt.animation)) do
                    Citizen.Wait(0)
                end

                TaskPlayAnim(playerPed, Config.anim.recolt.animation, Config.anim.recolt.name, 8.0, 8.0, 3000, 48, 1, false, false, false)
                FreezeEntityPosition(playerPed, true)
                Citizen.Wait(delay)
                remove(Config.anim.recolt.animation)
                Citizen.Wait(2000)
                
                if(drug == Config.weed) then
                    TriggerServerEvent("Zod#8682::selltWeed")
                end

                if(drug == Config.cocaine) then
                    TriggerServerEvent("Zod#8682::selltCoca")
                end

                if(drug == Config.meth) then
                    TriggerServerEvent("Zod#8682::sellMeth")
                end

                Citizen.Wait(1)
            end
        end)
    end
end


-- For developers (Special commands of the owner):
    -- /unlock (to unblock if you are blocked because of the FreezeEntityPosition())
    -- /coords (to know its coordinates)
    -- /tpcoords x y z (for tp to a coords)
    -- /testtrigger (to test the home-made anticheat :))


-- RegisterCommand("unlock", function(source, args, rawCommand) 
--     FreezeEntityPosition(PlayerPedId(-1), false)
-- end, false)

-- RegisterCommand("coords", function(source, args, rawCommand) 
--     local coords = GetEntityCoords(PlayerPedId(-1))
--     print("~b~Coords: \n"..coords.x..", "..coords.y..", "..coords.z.."\n")
-- end, false)

RegisterCommand("tpcoords", function(source, args, rawCommand)
    if(#args ~= 3) then
        SetNotificationTextEntry("STRING")
        AddTextComponentString("~r~Ex : /tpcoords 1 1 1")
        DrawNotification(true, false)
        return
    else
        local pedPlayer = PlayerPedId()
        local dest = vector3(tonumber(args[1]), tonumber(args[2]), tonumber(args[3]))
        SetEntityCoords(pedPlayer, dest.x, dest.y, dest.z, false, false, false, false)
    end
end, false)

-- RegisterCommand("testtrigger", function(source, args, rawCommand) 
--     TriggerServerEvent("Zod#8682::treatWeed")
-- end, false)


-- Owner : Zod#8682
-- Please contact for me anything