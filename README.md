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
