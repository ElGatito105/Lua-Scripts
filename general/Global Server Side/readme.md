# ROBLOX Serverside Lua _G.
This is a lua global serverside ENV so exploiters can't access global variables
To use this, copy the src and put it in your game, place it in ServerStorage please(or anywhere the client cant access) for best performance and works as intended
You can use it like this
```lua
local getgenv = require(game.ServerStorage.Globals);
getgenv().IsCool = true;
```
Made by CynDev