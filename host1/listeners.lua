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
lmc_device_set_name('110347CD_device', '110347CD');
lmc_set_handler('110347CD_device',function(button, direction)
  if (direction == 0) then return end
  local code =  '110347CD_' .. button
  print(code)
  writeKeyCodeToFile(code);
end)
print('Done!')

print('Initializing 4x6 macropad (WORK)...')
lmc_device_set_name('20222B1_device', '20222B1');
lmc_set_handler('20222B1_device',function(button, direction)
  if (direction == 0) then return end
  local code =  '20222B1_' .. button
  print(code)
  writeKeyCodeToFile(code);
end)
print('Done!')




