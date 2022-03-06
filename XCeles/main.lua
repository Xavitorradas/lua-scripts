--------------------------------------------------------------------------
-- Lua widget to view Minium Cel- value and RSSI signal during flight 	 --
-- 				                                                         --
--                                                                       --
-- Author:  Xavier Torradas                                              --
-- Date:    2022-03-01                                                   --
-- Version: 1.0                                                          --
--                                                                       --
-- Free use                                                              --
--                                                                       --
-- 														                 --
--                                                                       --
-- This program is free software; you can redistribute it and/or modify  --
-- it under your responsability.										 --
-- 											                             --
--                                                                       --
-- This program is distributed in the hope that it will be useful        --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of        --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  		         --
-- 												                         --
-- 												                         --
-- The call to getValue() returns a table with the current voltage of    -- 
-- of the cells it is monitoring by frsky lipo sensor.					 --
-- This example demonstrates getting Lipo cell voltage from a sensor  	 --
-- with the default name of 'Cel-' that you must create from Cells telem.--
-- At top you can see the minium cell value named as Cel- 				 --
-- under it you can see the RSSI actual value							 --
-- At bottom you can see the minium RSSI- signal and minium Cel-- value  --
-- readed by lua widget													 --
-- You can change  de Cel- value for VFAS- or RxBt- depending on sensor  --
---------------------------------------------------------------------------

local options = {}

    local function create(zone, options)
    
    	local data = { zone=zone, options=options }
		   field = 0
		   cellId = -1
	       logoxt = Bitmap.open("/WIDGETS/imatges/XTminilogo.png")	
	    return data

    end

    local function getTelemetryId(name)
       field = getFieldInfo(name)
       if field then
         return field.id
       else
         return -1
       end
    end

local function update(data, options)
	data.options = options
end

local function background(data)

end 

local function refresh(data)
 -- Cel- minium cell value
 cellId = getTelemetryId("Cel-")
  lcd.drawFilledRectangle(5, 5, 470, 220, SOLID + DARKBLUE , 5, 1);
 if cellId > -1 then 
 -- Sensor celda MENOR
	lcd.drawText(data.zone.x + 10, data.zone.y , "Cel- :", LEFT + XXLSIZE + WHITE );  
	if getValue("Cel-") > 0.0 and getValue("Cel-") <= 3.6 then    -- Can change the control value depending on sensor or value you wish
		-- Valors d'advertencia
		lcd.drawNumber(data.zone.x + 325, data.zone.y , getValue("Cel-")*100 , LEFT + XXLSIZE + COLOR_THEME_WARNING + PREC2 ); 
		playTone(2000,300,0, PLAY_BACKGROUND);
	   else
	   -- Valors Normals
	   lcd.drawNumber(data.zone.x + 325, data.zone.y , getValue("Cel-")*100 , LEFT + XXLSIZE + YELLOW + PREC2); 
	end
	-- Valors Minims
	lcd.drawText(data.zone.x + 30, data.zone.y + 180 , "Cel--: ", LEFT + DBLSIZE + WHITE );
	lcd.drawNumber(data.zone.x + 120, data.zone.y + 180,  getValue("Cel--")*100 , LEFT + DBLSIZE + BLINK + ORANGE + PREC2);	
	
 end

 cellId = getTelemetryId("RSSI")
 if cellId > -1 then
 -- Actual RSSI value
	   lcd.drawText(data.zone.x + 10, data.zone.y + 80, "RSSI :", LEFT + XXLSIZE + WHITE ); 
	if getValue("RSSI") <= 45 and getValue("RSSI") > 0 then     -- Can change the control value 45 for upper or lower as you wish
	   -- Valors d'advertencia
	   lcd.drawNumber(data.zone.x + 380, data.zone.y + 80, getValue("RSSI"), LEFT + XXLSIZE  + COLOR_THEME_WARNING );   
	   playTone(2000,300,0, PLAY_BACKGROUND);
	   else
	   -- Valors Normals
	   lcd.drawNumber(data.zone.x + 380, data.zone.y + 80, getValue("RSSI"), LEFT + XXLSIZE + YELLOW );	   
	end
	-- Valors Minims
	lcd.drawText(data.zone.x + 320, data.zone.y + 180, "Rssi-: ", LEFT + DBLSIZE + WHITE );
	lcd.drawNumber(data.zone.x + 420, data.zone.y + 180, getValue("RSSI-") , LEFT + DBLSIZE + BLINK + ORANGE );
	
 end	
		
--	lcd.drawBitmap(logoxt,420,50);
	

end


return { name="Cel-/RSSI", options=options, create=create, update=update, refresh=refresh, background=background }