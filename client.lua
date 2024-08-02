function crystalsendnotify(titolo, type, message)
    SendNUIMessage({
        name = "showNotifica",
        titolo = titolo,
        type = type,
        message = message
    })
end

RegisterNUICallback('focus', function(data, cb)
    SetNuiFocus(data.focus, data.focus)
    cb('ok')
end)

RegisterNetEvent('crystal:showNotify')
AddEventHandler('crystal:showNotify', function (titolo, type, message)
    SendNUIMessage({
        name = "showNotifica",
        titolo = titolo,
        type = type,
        message = message
    })
end)

exports('crystal_showNotify', function(titolo, type, message)
    crystalsendnotify(titolo, type, message)
end)