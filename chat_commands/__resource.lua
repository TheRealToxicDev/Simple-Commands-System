resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

name 'Simple Commands System'
author 'TheRealToxicDev'
contact 'https://redirect.toxicdev.me/discord'
version '1.0.0'

description 'A configurable and extendable chat command system, designed for easy drag-and-drop usage.'
usage [[
    By default, an example command pack is installed. You most likely want to delete this pack.
    Command packs like these can simply be dragged and dropped into the "commands" folder.

    Certain settings can be configured in the settings.lua file
]]

-- vRP compatibility
server_script '@vrp/lib/utils.lua'

-- ESX compatibility
server_script '@mysql-async/lib/MySQL.lua'

client_script 'system/client/proximity.lua'

shared_script 'settings.lua'

client_script 'modules/cl_*.lua'
server_script 'modules/sv_*.lua'
shared_script 'modules/sh_*.lua'

server_script 'system/server/pre.lua'
server_script "commands/*.lua"

server_script 'system/server/fxcheck_*.lua'
server_script 'system/server/commands.lua'

server_script 'system/versioncheck.lua'
