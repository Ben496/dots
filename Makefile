default:
	${warn Specify an install target}

i3:
	${info Rendering i3 config}
	template-config ./.config/i3/config

install_i3: i3
	${info Installing i3 config files}
	mkdir -p ${HOME}/.config/i3
	ln -s ${PWD}/.config/i3/config.out ${HOME}/.config/i3/config
	ln -s ${PWD}/.config/i3/stacked.sh ${HOME}/.config/i3/stacked.sh
	ln -s ${PWD}/.config/i3/tabbed.sh ${HOME}/.config/i3/tabbed.sh
	ln -s ${PWD}/.config/i3/toggle_touchpad.sh ${HOME}/.config/i3/toggle_touchpad.sh
