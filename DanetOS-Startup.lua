-- This is the first file the computer will go to when starting the Operating System
-- All this does is prevent the welcome message from being repeated.
print("Welcome to DanetOS Ver.1.2 [by Rusettsten]")
print("")
shell.run("DanetOS")
print("")
print("Unexpected Error... Shutting Down...")
os.sleep(1)
shell.run("shutdown")