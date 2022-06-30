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

print('Initializing 4x3 knobs macropad (HOME)...')
lmc_device_set_name('5018BD5_device', '5018BD5');
lmc_set_handler('5018BD5_device',function(button, direction)
  if (direction == 0) then return end
  local code =  '5018BD5_' .. button
  print(code)
  writeKeyCodeToFile(code);
end)
print('Done!')

print('Initializing 4x3 knobs macropad (OFFICE)...')
lmc_device_set_name('36F75EF0_device', '36F75EF0');
lmc_set_handler('36F75EF0_device',function(button, direction)
  if (direction == 0) then return end
  local code =  '36F75EF0_' .. button
  print(code)
  writeKeyCodeToFile(code);
end)
print('Done!')

print('Initializing 4x6 macropad (HOME)...')
lmc_device_set_name('110347CD_device', '110347CD');
lmc_set_handler('110347CD_device',function(button, direction)
  if (direction == 0) then return end
  local code =  '110347CD_' .. button
  print(code)
  writeKeyCodeToFile(code);
end)
print('Done!')


