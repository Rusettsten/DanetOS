-- DANET OS VER. 1-BACK MODEM, Written by Rusettsten
-- Installation Notes: Install Corresponding Programs in the Folder onto the device before installing this program

print("Enter Command:")
local command = read()
string.lower(command)

if command == "shutdown" then
shell.run("shutdown")
end
if command == "reboot" then
shell.run("reboot")
end
if command == "time" then
shell.run("time")
end
if command == "chat" then
-- This program runs the chat protocol without breaking the DanetOS security barrier

print("")
print("Join or Host? J or H:")
local jorh = read()
string.lower(jorh)

if jorh == "h" then
print("Enter Hostname:")
local hostname = read()
shell.run("chat host " .. hostname)
end

if jorh == "j" then
print("Enter Hostname:")
local hostname = read()
print("Enter Username:")
local username = read()
shell.run("chat join " .. hostname .. " " .. username)
end
end
if command == "danet" then
-- Easy DA-NET script for Computercraft use with Rednet API
-- Written by Rusettsten 5-13-2015
rednet.open("back")
print("Enter Receiving Computer's ID:")
id = tonumber(read())
print("Enter message/command:")
message = read()
rednet.send(id,message)
rednet.close("back")
print("Success!")
print("")
end
if command == "danet-p" then
--This is the exact same as Danet, except it allows for the communication of a password and verification with a server before it can be completed

rednet.open("back")
print("Enter Computer ID:")
local id = tonumber(read())
print("Enter Computer Pass:")
local pass = read("*")
print("Loading...")
rednet.send(id,pass)
id2,verify = rednet.receive(20)
if verify == "true" then
print("")
print("Verification Sucessful!")
print("Enter Command:")
local message = read()
rednet.send(id, message)
end
if verify == "false" then
print("")
print("Verification Failed.")
end
end
if command == "danet-r" then
--This is the DanetOS client for communicating with locked reactors

rednet.open("back")
print("Enter ReactComp ID:")
compID = tonumber(read())
print("Enter React Comp Pass")
compPass = read("*")
print("Loading...")
rednet.send(compID,compPass)
reactID,reactVerify = rednet.receive(20)

if reactVerify == "true" then
print("Connected to ReactComp!")
print("Enter Command:")
reactCom = read()
string.lower(reactCom)
rednet.send(compID, reactCom)
if reactCom == "fuelreact" or "fuelmax" or "fueltemp" or "fuellevel" or "casingtemp" or "energystored" then
reactID2,reactResp = rednet.receive(20)
print(reactResp)
end
if reactVerify == "false" then
print("Verification Failed.")
end
end
end
if command == "programs" then
print("")
print("WARNING: SOME PROGRAMS ARE BLOCKED FOR RUSCOM COPYRIGHT PROTECTION.")
print("")
shell.run("programs")
end
if command == "adventure" then
shell.run("adventure")
end
if command == ("pastebin" or "shell" or "apis" or "exit" or "move" or "multishell" or "fg" or "bg" or "delete" or "lua" or "list" or "cp" or "dir" or "ls" or "mkdir" or "mv" or "rm" or "rs" or "sh") then
shell.run("clear")
print("")
print("WARNING: ATTEMPTED PROGRAM BLOCKED FOR DANETOS TAMPER PROTECTION.")
print("Don't worry, these programs will be unblocked for the most part in the future.")
print("")
end
if command == "drive" then
shell.run("drive")
end
if command == "hello" then
shell.run("hello")
end
if command == "gps" then
shell.run("gps locate")
end
if command == "type" then
shell.run("type")
print("Note sure what this does...")
end
if command == ("clear" or "clr") then
shell.run("clear")
end
if command == "redstone" then
shell.run("redstone")
end
if command == "worm" then
shell.run("worm")
end
if command == "uninstall" then
shell.run("Uninstall")
end
if command == "id" then
shell.run("id")
end
if command == "copy" then
--Program for copying programs off of disks

print("Enter program name to copy from disk.")
progName = read()
shell.run("copy /disk/" .. progName .. " /" .. progName)
print("Done!")
end
if command == "battleship" then
--Protocol for battleship, if installed, on a DanetOS computer
print("Join or Host?")
jorh = read()
string.lower(jorh)

if jorh == "join" then
shell.run("battleship join")
end
if jorh == "host" then
shell.run("battleship host")
end
end
if command == "tictactoe" then
shell.run("tictactoe")
end
if command == "help" then
shell.run("Help")
end
if command == "color" then
term.setTextColor(colors.green)
print("Welcome to DanetOS Color!")
term.setTextColor(colors.blue)
print("Enter YOUR color:")
term.setTextColor(colors.white)
ycolor = read()

string.lower(ycolor)
if ycolor == "white" then
term.setTextColor(colors.white)
end
if ycolor == "orange" then
term.setTextColor(colors.orange)
end
if ycolor == "magenta" then
term.setTextColor(colors.magenta)
end
if ycolor == "lightblue" then
term.setTextColor(colors.lightBlue)
end
if ycolor == "yellow" then
term.setTextColor(colors.yellow)
end
if ycolor == "lime" then
term.setTextColor(colors.lime)
end
if ycolor == "pink" then
term.setTextColor(colors.pink)
end
if ycolor == "gray" then
term.setTextColor(colors.gray)
end
if ycolor == "lightgray" then
term.setTextColor(colors.lightGray)
end
if ycolor == "cyan" then
term.setTextColor(colors.cyan)
end
if ycolor == "purple" then
term.setTextColor(colors.purple)
end
if ycolor == "blue" then
term.setTextColor(colors.blue)
end
if ycolor == "brown" then
term.setTextColor(colors.brown)
end
if ycolor == "green" then
term.setTextColor(colors.green)
end
if ycolor == "red" then
term.setTextColor(colors.red)
end
if ycolor == "black" then
term.setTextColor(colors.black)
end
print("Color Set!")
end
shell.run("DanetOS")