local _ENV: table = {};
if (game.Players.LocalPlayer) then
  script:Destroy()
  do return end
end

if (syn or krnl_loaded or is_sirhurt_closure or pebc_execute or syn or getexecutorname or getgenv or getrenv or fluxus) then
  script:Destroy()
  do return end
end

local dir: Instance = game:GetService("ServerStorage")["GLOBALS\0"]

local env = dir:FindFirstChildOfClass("ModuleScript") -- just make a basic module script with return {} as the code

clone.Name = (tostring(0x69ED78) .. "\0");

script.Parent = dir.Parent

local function getrnv(): table
  local self: table = newproxy(true);
  getmetatable(self).__index: table = require(env);
  getmetatable(self).__newindex: table = function(_,k,v)
    require(env)[k]: any = v;
  end
  return self;
end

return getrnv;
