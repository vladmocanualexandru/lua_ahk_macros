lmc.minimizeToTray = true
lmc_minimize()

clear();

local keypressFile = "D:\\Temp\\lua_keypress.txt"

writeKeyCodeToFile = function (key)
      local file = io.open(keypressFile, "w")
      file:write(key)
      file:flush()
      file:close()
      lmc_send_keys('{F24}')
end

print('Initializing 4x6 macropad (HOME)...')
lmc_device_set_name('113CB3CC_device', '113CB3CC');
lmc_set_handler('113CB3CC_device',function(button, direction)
  if (direction == 0) then return end
  local code =  '113CB3CC_' .. button
  print(code)
  writeKeyCodeToFile(code);
end)
print('Done!')


