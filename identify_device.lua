-- lmc.minimizeToTray = true
-- lmc_minimize()

clear();

local keyboardId = ''
local deviceName = keyboardId .. '_device'
local keypressFile = "Z:\\Macros\\lua_keypress.txt"

if (keyboardId == '') then
	lmc_assign_keyboard('FOUND');
	dev = lmc_get_devices()
	for key,value in pairs(dev) do
		name = '';
		systemId = '';	for key2,value2 in pairs(value) do
			if (key2 == 'Name') then
				name = value2;
			elseif (key2 == 'SystemId') then
				systemId = value2;
			end
	   end

	   if (name == 'FOUND') then
			tokens  = {};
			i = 1;
			for token in string.gmatch(systemId, "[^\\&]+") do
			   tokens[i] = token;
			   i=i+1;
			end

			print('Keyboard ID: ' .. tokens[5]);

			break;
	   end

	end

end


writeKeyCodeToFile = function (key)
      local file = io.open(keypressFile, "w")
      file:write(key)
      file:flush()
      file:close()
      lmc_send_keys('{F24}')
end

if (keyboardId ~= '') then

    lmc_device_set_name(deviceName, keyboardId);

    print('Running...')
    lmc_set_handler(deviceName,function(button, direction)
      if (direction == 0) then return end

      local code =  keyboardId .. '_' .. button

      print(code)

      writeKeyCodeToFile(code);
    end)

end


