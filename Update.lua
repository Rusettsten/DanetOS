--Updater for DanetOS

shell.run("clear")
shell.run("delete DanetOSFiles/updateVer2")
print("Retrieving Updater...")
updateVerFile = fs.open("DanetOSFiles/updateVer","r")
updateVer = updateVerFile.readAll()
updateVerFile.close()
shell.run("delete DanetOSFiles/updateVer")
shell.run("pastebin get rehAnEUV DanetOSFiles/updateVer2")
updateVerFile2 = fs.open("DanetOSFiles/updateVer2","r")
updateVer2 = updateVerFile2.readAll()
updateVerFile2.close()
if updateVer2 == updateVer then
print("Your DanetOS client is up to date!")
else
print("Your DanetOS client can be updated!")
shell.run("delete startup")
shell.run("pastebin get CqJvp3td startup")
shell.run("delete DanetOSFiles/uninTrig")
uninTrigFile = fs.open("DanetOSFiles/uninTrig","w")
uninTrigFile.write("yes")
uninTrigFile.close()
shell.run("reboot")
end