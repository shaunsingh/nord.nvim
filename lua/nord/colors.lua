local moonlight = {
	-- Common colors

	white =			'#EEFFFF',
	gray =  		'#a1abe0',
	black = 		'#000000',
	red =   		'#ff757f',
	green = 		'#2df4c0',
	yellow =		'#ffc777',
	paleblue =  	'#d6e7f0',
	cyan =		    '#b994f1',
	blue =  	    '#04d1f9',
	purple =		'#b4a4f4',
	orange =		'#f67f81',
	pink =  		'#ecb2f0',

	bg =			'#212337',
	bg_alt =		'#1B1E2B',
	fg =			'#e4f3fa',
	text =			'#757dac',
	comments =		'#7486d6',
	selection = 	'#403c64',
	contrast =		'#1b1c2b',
	active =		'#414863',
	border =		'#414863',
	line_numbers =	'#403c64',
	highlight =	    '#a1abe0',
	disabled =		'#515772',
	cursor =		'#5cb4fc',
	accent =		'#c0c6d2',

	error =			'#FF5370',
	link =			'#80CBC4',

	none =			'NONE'
}

-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.moonlight_contrast == false then
    moonlight.sidebar = moonlight.bg
    moonlight.float = moonlight.bg
else
    moonlight.sidebar = moonlight.bg_alt
    moonlight.float = moonlight.bg_alt
end

return moonlight
