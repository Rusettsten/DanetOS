uninTrigFile = fs.open("DanetOSFiles/uninTrig","r")
uninTrig = uninTrigFile.readAll()
uninTrigFile.close()
if uninTrig == "yes" then
shell.run("delete DanetOSFiles/uninTrig")
uninTrigFWrite = fs.open("DanetOSFiles/uninTrig","w")
uninTrigFWrite.write("no")
shell.run("delete DanetOS")
shell.run("delete DanetOS-Startup")
shell.run("reboot")
end
if uninTrig == "no" then
shell.run("pastebin run z2gYyn0d")
end