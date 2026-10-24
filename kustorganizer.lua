package.cpath = package.cpath .. ";" .. os.getenv("HOME") .. "/.luarocks/lib/lua/5.5/lfs.so"

local lfs = require("lfs")

local home = os.getenv("HOME")
local targetdir = home .. "/defaultstore"

local home = os.getenv("HOME")

local targetdir = home .. "/defaultstore"

local extensions = {
    [home .. "/Músicas"] = {
        mp3 = true,
        wav = true,
        ogg = true,
        flac = true
    },

    [home .. "/Imagens"] = {
        png = true,
        jpg = true,
        jpeg = true,
        gif = true,
        webp = true,
        bmp = true
    },

    [home .. "/Vídeos"] = {
        mp4 = true,
        mkv = true,
        avi = true,
        mov = true,
        webm = true
    },

    [home .. "/Documentos"] = {
        pdf = true,
        txt = true,
        doc = true,
        docx = true,
        odt = true,
        lua = true,
        py = true
    }
}


local function getextension(filename)
    local ext = filename:match("%.([^%.]+)$")
    return ext and ext:lower() or ""
end


for file in lfs.dir(targetdir) do
    if file ~= "." and file ~= ".." then
        local fullpath = targetdir .. "/" .. file
        local attributes = lfs.symlinkattributes(fullpath)

        if attributes and attributes.mode == "file" then
            local ext = getextension(file)
            local destination = nil

            for folder, allowed in pairs(extensions) do
                if allowed[ext] then
                    destination = folder
                    break
                end
            end

            if not destination then
    destination = home .. "/Downloads"
end

            local dirattr = lfs.attributes(destination)

            if dirattr and dirattr.mode == "directory" then
                local finalpath = destination .. "/" .. file

                if not lfs.attributes(finalpath) then
                    local ok, err = os.rename(fullpath, finalpath)

                    if ok then
                        print("[Movido] " .. file .. " -> " .. destination)
                    else
                        print("[ERRO] " .. file .. ": " .. tostring(err))
                    end
                else
                    print("[IGNORADO] Já existe: " .. finalpath)
                end
            else
                print("[IGNORADO] Pasta de destino inexistente: " .. destination)
            end
        end
    end
end

print("Organização concluída!")