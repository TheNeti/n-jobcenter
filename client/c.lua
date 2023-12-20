local set = Neti.options

exports.ox_target:addBoxZone({
  coords = vec3(set.Coords.x, set.Coords.y, set.Coords.z+1),
  size = vec3(1, 1, 2),
  rotation = set.Coords.w,
  debug = false,
  drawSprite = true,
  options = {
      {
        onSelect = function()
          lib.showContext('jobcenter')
        end,
        icon = "fas fa-briefcase",
        label = "Urząd Pracy",
      }
  }
})

Citizen.CreateThread(function()
  RequestModel(set.PedName)
  while not HasModelLoaded(set.PedName) or not HasCollisionForModelLoaded(set.PedName) do
  Wait(1)
end

local typo = CreatePed(28, set.PedName, set.Coords, true, true)
SetEntityAsMissionEntity(typo, true, true)
SetEntityInvincible(typo, true)
SetBlockingOfNonTemporaryEvents(typo, true)
FreezeEntityPosition(typo, true)

local blipCoord = AddBlipForCoord(set.Coords.x, set.Coords.y, set.Coords.z)
SetBlipSprite(blipCoord, set.BlipSprite)
SetBlipDisplay(blipCoord, 4)
SetBlipScale(blipCoord, 1.0)
SetBlipColour(blipCoord, set.BlipColour)
SetBlipAsShortRange(blipCoord, true)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString(set.BlipName)
EndTextCommandSetBlipName(blipCoord)
end)

lib.registerContext({
    id = 'jobcenter',
    title = 'Wybierz Pracę',
    options = Neti.Jobs
  })
