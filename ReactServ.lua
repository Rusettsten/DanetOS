--Server for reactors working with Danet-r/DanetOS Protocol

shell.run("clear")
print("DanetOS Side Protocol- ReactServ")
print("LOCKED REACTOR, TAMPERING IS PUNISHABLE")
rednet.open("bottom")
reactor = peripheral.wrap("back")
compID,reactPass = rednet.receive()

--Enter pass for Computer in next if statement
if reactPass == "yopasshere" then
rednet.send(compID,"true")
compID2,reactCom = rednet.receive(60)
	if reactCom == "fuelreact" then
	reactReturn = reactor.getFuelReactivity()
	rednet.send(compID2,reactReturn)
	end
	if reactCom == "fuelmax" then
	reactReturn = reactor.getFuelAmountMax()
	rednet.send(compID2,reactReturn)
	end
	if reactCom == "fueltemp" then
	reactReturn = reactor.getFuelTemperature()
	rednet.send(compID2,reactReturn)
	end
	if reactCom == "fuellevel" then
	reactReturn = reactor.getFuelAmount()
	rednet.send(compID2,reactReturn)
	end
	if reactCom == "casingtemp" then
	reactReturn = reactor.getCasingTemperature()
	rednet.send(compID2,reactReturn)
	end
	if reactCom == "energystored" then
	reactReturn = reactor.getEnergyStored()
	rednet.send(compID2,reactReturn)
	end
	if reactCom == "off" then
	reactor.setActive(false)
	end
	if reactCom == "on" then
	reactor.setActive(true)
	end
	if reactCom == "ejectwaste" then
	reactor.ejectWaste()
	end
	if reactCom == "ejectfuel" then
	reactor.ejectFuel()
	end
else
rednet.send(compID,"false")
end
rednet.close("bottom")
shell.run("reboot")