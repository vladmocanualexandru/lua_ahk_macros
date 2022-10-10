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
lmc_device_set_name('4504C20_device', '4504C20');
lmc_set_handler('4504C20_device',function(button, direction)
  if (direction == 0) then return end
  local code =  '4504C20_' .. button
  print(code)
  writeKeyCodeToFile(code);
end)
print('Done!')

print('Initializing 4x6 macropad (WORK)...')
lmc_device_set_name('2E5C4E71_device', '2E5C4E71');
lmc_set_handler('2E5C4E71_device',function(button, direction)
  if (direction == 0) then return end
  local code =  '2E5C4E71_' .. button
  print(code)
  writeKeyCodeToFile(code);
end)
print('Done!')




