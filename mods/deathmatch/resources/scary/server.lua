
function servertalkprivate(message, sendto)
        --Talk to one client only
	outputChatBox(tostring(message), sendto, msg_red, msg_green, msg_blue, true)
end

function servertalk(message)
        --Talk to everyone
	servertalkprivate(message, getRootElement())
end

addEventHandler("onPlayerJoin",getRootElement(),onJoin)addCommandHandler ( "prank",
 function ( thePlayer, _, playerName )
  if ( not playerName ) then
   outputChatBox ( "Error : Put the [player name] , Example : /prank [player name].", thePlayer, 255, 0, 0 );
   return;
  end

  local player = getPlayerFromName ( playerName );
  if ( not player ) then
   outputChatBox ( "Error : Player not found.", thePlayer, 255, 0, 0 );
   return;
  end

  triggerClientEvent ( "showBSODToPlayer", player, player );
 end
);