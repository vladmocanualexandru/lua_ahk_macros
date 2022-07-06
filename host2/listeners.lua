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
lmc_device_set_name('144F1566_device', '144F1566');
lmc_set_handler('144F1566_device',function(button, direction)
  if (direction == 0) then return end
  local code =  '144F1566_' .. button
  print(code)
  writeKeyCodeToFile(code);
end)
print('Done!')

print('Initializing 4x6 macropad (HOME)...')
lmc_device_set_name('1ACD04D4_device', '1ACD04D4');
lmc_set_handler('1ACD04D4_device',function(button, direction)
  if (direction == 0) then return end
  local code =  '1ACD04D4_' .. button
  print(code)
  writeKeyCodeToFile(code);
end)
print('Done!')


