-- This script uninstalls Danet :(

print("Are you sure? Y/N")
verify = read()

if verify == "Y" then
shell.run("delete DanetOS")
shell.run("delete DanetOS-Startup")
shell.run("delete startup")
end

print("...")
print("Goodbye. -DanetOS Dev, Rusettsten")
os.sleep(3)
os.reboot()