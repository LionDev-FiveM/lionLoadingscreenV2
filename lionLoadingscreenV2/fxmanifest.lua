fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Lion Development'
description 'LoadingscreenV2'
version '1.1'

loadscreen 'html/index.html'

server_script 'server.lua'

files {
    'html/index.html',
	'html/style.css',
	'html/background.png',
	'html/fonts/NanumGothic-Regular.ttf',
	'html/zvcodinglsv2.mp3',
	'version.json'
}

escrow_ignore {
    'html/index.html',
	'html/style.css',
	'server.lua'
}