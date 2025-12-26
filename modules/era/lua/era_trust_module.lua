-----------------------------------
-- Block gaining Trusts
-----------------------------------
require('modules/module_utils')
-----------------------------------
print('[TEST] no_trusts.lua loaded')
local m = Module:new('era_no_trusts')

-- (Backup) Disable trading Ciphers in Era servers.
m:addOverride('xi.trust.onTradeCipher', function(player, trade, csid, rovCs, arkAngelCs)
    return
end)


return m