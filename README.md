# Kust-s-Organizer
a simple terminal automatic file organizer

# Dependecies
 - Lua File System(lfs)
 - luarocks
# How to Install:

Debian/Ubuntu:

sudo apt update
sudo apt install lua5.4 liblua5.4-dev luarocks build-essential

Fedora:

sudo dnf install lua lua-devel luarocks gcc
sudo luarocks install luafilesystem

Arch:

sudo pacman -Syu lua luarocks base-devel
sudo luarocks install luafilesystem

# ⚠️ If Arch doesnt install try this:

lua -v
luarocks --version

# How to Use Kust's Organizer

after install put files in /defaultstore you want to organize in this categories:
 - Images
 - Music
 - Videos
 - Documents
if doesnt have in this categories it will be in Downloads

for run use this command in the folder you put the script and defaultstore:

lua kustorganizer.lua

# Ty for Using this script
