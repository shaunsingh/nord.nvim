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

    nord0_gui = "#2E3440"        ,
    nord1_gui = "#3B4252"        ,
    nord2_gui = "#434C5E"        ,
    nord3_gui = "#4C566A"        ,
    nord3_gui_bright = "#616E88" ,
    nord4_gui = "#D8DEE9"        ,
    nord5_gui = "#E5E9F0"        ,
    nord6_gui = "#ECEFF4"        ,
    nord7_gui = "#8FBCBB"        ,
    nord8_gui = "#88C0D0"        ,
    nord9_gui = "#81A1C1"        ,
    nord10_gui = "#5E81AC"       ,
    nord11_gui = "#BF616A"       ,
    nord12_gui = "#D08770"       ,
    nord13_gui = "#EBCB8B"       ,
    nord14_gui = "#A3BE8C"       ,
    nord15_gui = "#B48EAD"       ,

	bg =            '#2E3440',
	bg_alt =        '#3B4252',
	fg =            '#D8DEE9',
	text =          '#D8DEE9',
	comments =      '#4C566A',
	selection =     '#3B4252',
	contrast =      '#434C5E',
	active =        '#5E81AC',
	border =        '#434C5E',
	line_numbers =  '#616E88',
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
if vim.g.nord_contrast == true then
    nord.sidebar = nord.bg_alt
    nord.float = nord.bg_alt
else
    nord.sidebar = nord.bg
    nord.float = nord.bg
end

return nord
