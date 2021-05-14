local nord = {

	white =         '#ECEFF4',
	gray =          '#E5E9F0',
	black =         '#3B4252',
	red =           '#BF616A',
	green =         '#A3BE8C',
	yellow =        '#EBCB8B',
	paleblue =      '#81A1C1',
	cyan =          '#88C0D0',
	blue =          '#5E81AC',
	purple =        '#B48EAD',
	orange =        '#D08770',
	pink =          '#81A1C1',

	bg =            '#2E3440',
	bg_alt =        '#50546c',
	fg =            '#D8DEE9',
	text =          '',
	comments =      '#607087',
	selection =     '#403c64',
	contrast =      '#1b1c2b',
	active =        '#414863',
	border =        '#414863',
	line_numbers =  '#596399',
	highlight =     '#a1abe0',
	disabled =      '#515772',
	cursor =        '#5cb4fc',
	accent =        '#a3ace1',

	error =         '#BF616A',
	link =          '#A3BE8C',

	none =          'NONE'
}

-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.nord_contrast == false then
    nord.sidebar = nord.bg
    nord.float = nord.bg
else
    nord.sidebar = nord.bg_alt
    nord.float = nord.bg_alt
end

return nord
