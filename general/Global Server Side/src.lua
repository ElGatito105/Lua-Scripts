local _ENV: table = {};
if (game.Players.LocalPlayer) then
  script:Destroy()
  do return end
end

if (syn or krnl_loaded or is_sirhurt_closure or pebc_execute or syn or getexecutorname or getgenv or getrenv or fluxus) then
  script:Destroy()
  do return end
end

local function getrnv(): table
  local self: table = newproxy(true);
  getmetatable(self).__index: table = _ENV;
  getmetatable(self).__newindex: (table, any, any) -> any = function(_: table,k: any,v: any)
    _ENV[k]: any = v;
  end
  return self;
end

return getrnv;
