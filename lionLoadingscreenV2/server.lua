Citizen.CreateThread(function()
    local vRaw = LoadResourceFile(GetCurrentResourceName(), 'version.json')
    if vRaw and Config.VersionCheck then
        local v = json.decode(vRaw)
        local url = 'https://raw.githubusercontent.com/LionDev-FiveM/lionLoadingscreenV2/main/lionLoadingscreenV2/version.json'
        PerformHttpRequest(url, function(code, res)
            if code == 200 then
                local rv = json.decode(res)
                if rv.version ~= v.version then
                    print(([[
 _      _               _____                 _                                  _   
| |    (_)             |  __ \               | |                                | |  
| |     _  ___  _ __   | |  | | _____   _____| | ___  _ __  _ __ ___   ___ _ __ | |_ 
| |    | |/ _ \| '_ \  | |  | |/ _ \ \ / / _ \ |/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|
| |____| | (_) | | | | | |__| |  __/\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_ 
|______|_|\___/|_| |_| |_____/ \___| \_/ \___|_|\___/| .__/|_| |_| |_|\___|_| |_|\__|
                                                    | |                             
                                                    |_|                             
Script: lionLoadingscreenV2
UPDATE: %s AVAILABLE
CHANGELOG: %s
Download: https://github.com/LionDev-FiveM/lionLoadingscreenV2
If you need help, join our Discord: https://dsc.gg/lion-dev
]]):format(rv.version, rv.changelog))
                end
            else
                print('Error in versioncheck')
            end
        end, 'GET')
    end
end)