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

print('Initializing DEVICE1...')
lmc_device_set_name('DEVICE1_ID_device', 'DEVICE1_ID');
lmc_set_handler('DEVICE1_ID_device',function(button, direction)
  if (direction == 0) then return end
  local code =  'DEVICE1_ID_' .. button
  print(code)
  writeKeyCodeToFile(code);
end)
print('Done!')

print('Initializing DEVICE2...')
lmc_device_set_name('DEVICE2_ID_device', 'DEVICE2_ID');
lmc_set_handler('DEVICE2_ID_device',function(button, direction)
  if (direction == 0) then return end
  local code =  'DEVICE2_ID_' .. button
  print(code)
  writeKeyCodeToFile(code);
end)
print('Done!')
