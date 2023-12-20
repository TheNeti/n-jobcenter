Neti = {}

Neti.options = {
    Coords = vector4(-545.2590, -203.7455, 37.2151, 209.1270), -- Kordynaty peda i blipa
    PedName = 'a_m_m_hasjew_01', -- Wygląd peda
    BlipName = 'Urząd Pracy', -- Nazwa Blipa
    BlipColour = 5, -- Kolor Blipa
    BlipSprite = 498 -- Wygląd Blipa
}

Neti.Jobs = {
        {
          title = 'Bezrobotny',
          image = 'brak', -- Adres URL do zdjęcia najlepiej z discorda
          icon = 'user',
          arrow = true,
          onSelect = function()
              TriggerServerEvent('n-jobcenter:getajob', 'unemployed')
          end,
          metadata = {
            {label = 'Wynagrodzenie', value = '300$'},
            {label = 'Opis pracy', value = 'Nic nie robisz i dostajesz zasiłek'}
          },
        },
        {
          title = 'Taxi',
          image = 'brak', -- Adres URL do zdjęcia najlepiej z discorda
          icon = 'taxi',
          arrow = true,
          onSelect = function()
              TriggerServerEvent('n-jobcenter:getajob', 'taxi')
          end,
          metadata = {
            {label = 'Wynagrodzenie', value = '300$'},
            {label = 'Opis pracy', value = 'Zawozisz klientów tam gdzie sobie życzą'}
          },
        },
        {
          title = 'Policja',
          image = 'brak', -- Adres URL do zdjęcia najlepiej z discorda
          icon = 'handcuffs',
          arrow = true,
          onSelect = function()
              TriggerServerEvent('n-jobcenter:getajob', 'police')
          end,
          metadata = {
            {label = 'Wynagrodzenie', value = '300$'},
            {label = 'Opis pracy', value = 'Zajmujesz się łapaniem przestępców'}
          },
        },
}