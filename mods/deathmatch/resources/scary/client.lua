local BSODTimer;

function renderBSOD()
 local x, y = guiGetScreenSize();
 dxDrawImage ( 0, 0, x, y, "img.jpg", 0, 0, 0, _, true);
end

addEvent ( "showBSODToPlayer", true );
addEventHandler ( "showBSODToPlayer", getRootElement(),
 function ( thePlayer )
  if ( thePlayer == getLocalPlayer() ) then
   if ( isTimer ( BSODTimer ) ) then
    killTimer ( BSODTimer );
   end

	for i=1,100 do
		setWorldSoundEnabled(i, false)
	end
   setAmbientSoundEnabled("general", false)
   setAmbientSoundEnabled("gunfire", false)
   setInteriorSoundsEnabled(false)
   showChat ( false );
   setPlayerHudComponentVisible ( "all", false );
   local sound = playSound("sound.mp3")

   removeEventHandler ( "onClientRender", getRootElement(), renderBSOD );
   addEventHandler ( "onClientRender", getRootElement(), renderBSOD );

   BSODTimer = setTimer ( function ()
     removeEventHandler ( "onClientRender", getRootElement(), renderBSOD );
     showChat ( true );
     setPlayerHudComponentVisible ( "all", true );
	 setAmbientSoundEnabled("general", true)
	 setAmbientSoundEnabled("gunfire", true)
	 setInteriorSoundsEnabled(true)
	 resetWorldSounds()
    end, 3000, 1
   );
  end
 end
);