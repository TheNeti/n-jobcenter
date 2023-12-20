ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('n-jobcenter:getajob')
AddEventHandler('n-jobcenter:getajob', function(job) 
    if job == 'unemployed' or job == 'police' or job == 'taxi' then -- Tu wpisz joby które chcesz dodać do urzędu pracy
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        if xPlayer ~= nil then
            xPlayer.setJob(job, 0)

            TriggerClientEvent('esx:showNotification', _source, 'Zatrudniłeś się w nowej pracy!')
        end
    else
        DropPlayer(source, 'SETJOB TRIGGER DETECTED')
    end
end)
