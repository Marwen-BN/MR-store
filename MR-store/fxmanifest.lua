game 'rdr3'
fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'


shared_script 'config.lua'
client_script 'client/main.lua'
server_script 'server/main.lua'

ui_page{
    'html/index.html'
}

files {
    'html/index.html',
    'html/js/*.js',
    'html/style.css',
    'html/img/*.png',
    'html/fonts/*.otf',
    'html/fonts/*.woff',
}

lua54 'yes'