local dorogaSF = createObject (968, 342.7, -1787.69, 5, 0, 90, 0) 
dorogasaf = createMarker (346.29, -1790.09, 3.5,"cylinder", 3, 0, 255, 0, 0)

function opengate(source)
if isElementWithinMarker (source, dorogasaf) and not isTimer (ob1) then
	moveObject (dorogaSF, 1000, 342.7, -1787.69, 5, 0, -90, 0)
	setTimer (moveObject, 3500, 1, dorogaSF, 1000, 342.7, -1787.69, 5, 0, 90, 0)
	ob1 = setTimer (function () end, 5000, 1)
	end
end
addEventHandler ("onMarkerHit", root, opengate)

-------------------------------------------------------------------------------


local dorogaSF2 = createObject (968, 359.5, -1787.5, 5, 0, 90, 180) 
dorogasaf2 = createMarker (356.1, -1785.8, 3.4,"cylinder", 3, 0, 255, 0, 0)

function opengate2(source)
if isElementWithinMarker (source, dorogasaf2) and not isTimer (ob1) then
	moveObject (dorogaSF2, 1000, 359.5, -1787.5, 5, 0, -90, 0)
	setTimer (moveObject, 3500, 1, dorogaSF2, 1000, 359.5, -1787.5, 5, 0, 90, 0)
	ob1 = setTimer (function () end, 5000, 1)
	end
end
addEventHandler ("onMarkerHit", root, opengate2)