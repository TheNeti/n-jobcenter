fx_version "cerulean"
game "gta5"
lua54 "yes"

author "Neti"
description 'Job Center'
version "1.0"

shared_scripts {
    '@ox_lib/init.lua',
    'shared/config.lua'
}

client_script 'client/*.lua'

server_script 'server/*.lua'

dependencies {
    'ox_lib',
    'ox_target'
}