--[[
Автор карты и скриптов Vladick
Спасибо за скачивание моего ресурса
]]

---------------------------------------------------------------------------------------------
function dance ()
   local ped1 = createPed(45, 326, -1835.19, 3.8)
   setPedRotation(ped1, 300)
   setPedAnimation( ped1, "DANCING", "dnce_M_a")
end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), dance)

function dance2 ()
   local ped1 = createPed(138, 327.7, -1833.09, 3.8)
   setPedRotation(ped1, 164)
   setPedAnimation( ped1, "DANCING", "dnce_M_b")
end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), dance2)

function dance3 ()
   local ped1 = createPed(139, 330.6, -1836.5, 3.8)
   setPedRotation(ped1, 110)
   setPedAnimation( ped1, "DANCING", "dnce_M_c")
end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), dance3)

function dance4 ()
   local ped1 = createPed(140, 328.7, -1838.09, 3.8)
   setPedRotation(ped1, 164)
   setPedAnimation( ped1, "DANCING", "dnce_M_a")
end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), dance4)

function drinker ()
   local ped1 = createPed(100, 194.05,-1805.8, 4.3)
   setPedRotation(ped1, 354)
   setPedAnimation( ped1, "bar", "dnk_stndm_loop")
end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), drinker)

-------------------------------------------------------------------------------------------------

local car = createVehicle ( 500, 331.7, -1832.8, 4, 0, 0, 310 ) 
function freez ()
 setVehicleLocked ( car, false )
--setElementFrozen ( car, true )
end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), freez)

---------------------------------------------------------------------------------------------------

addEventHandler( 'onClientResourceStart', resourceRoot,
	function( )
		local uSound = playSound3D( 'https://f.top4top.net/m_933tklvv1.mp3', 330.2, -1833.8, 4 )-- вот здесь можна сменить радио меняте это (http://lyd.nrk.no/nrk_radio_mp3_mp3_h.m3u)
		setSoundMaxDistance( uSound, 150)
	end
)

--------------------------------------------------------------------------------------------------------

