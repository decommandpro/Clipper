local args = {...}

local packages = require("Packages")

function InstallFromClip()
    shell.run("wget", packages[args[2]], args[2])
end


if args[1] == "install" then
    if packages[args[2]] then
        InstallFromClip()
    end
end