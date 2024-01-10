version "1.0"
title "MAVE TEMPLATE TRAPPHONE"
description "THIS IS FULL ACCES TEMPLATE TO YOUR SERVER"
author "MAVE"
lua54 'on'

fx_version "cerulean"
game "gta5"

ui_page "web/index.html"

client_scripts {
	'*.lua',
}

files {
	"web/index.html",
	"web/js/jquery-3.6.0.min.js",
	"web/js/listener.js",
}

escrow_ignore {
	'client.lua',
	'server.lua',
	'config.lua',
	'web/index.html'
  }
