local nord = {

	white =         '#ECEFF4',
	gray =          '#cad2e1',
	black =         '#3B4252',
	red =           '#BF616A',
	green =         '#A3BE8C',
	yellow =        '#B48EAD',
	paleblue =      '#5E81AC',
	cyan =          '#88C0D0',
	blue =          '#8FBCBB',
	purple =        '#81A1C1',
	orange =        '#D08770',
	pink =          '#EBCB8B',

	bg =            '#2E3440',
	bg_alt =        '#3B4252',
	fg =            '#D8DEE9',
	text =          '#D8DEE9',
	comments =      '#4C566A',
	selection =     '#3B4252',
	contrast =      '#434C5E',
	active =        '#5E81AC',
	border =        '#434C5E',
	line_numbers =  '#434C5E',
	highlight =     '#c1c9d6',
	disabled =      '#3B4252',
	cursor =        '#E5E9F0',
	accent =        '#D8DEE9',

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
