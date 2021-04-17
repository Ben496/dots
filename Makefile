default:
	${warn Specify an install target}

install: install_i3 install_polybar install_alacritty install_vim install_nvim install_zsh

i3:
	${info Rendering i3 config}
	template-config ./.config/i3/config

install_i3: i3
	${info Installing i3 config files}
	mkdir -p ${HOME}/.config/i3
	install -m 644 ${PWD}/.config/i3/config.out ${HOME}/.config/i3/config
	install -m 644 ${PWD}/.config/i3/stacked.sh ${HOME}/.config/i3/stacked.sh
	install -m 644 ${PWD}/.config/i3/tabbed.sh ${HOME}/.config/i3/tabbed.sh
	install -m 644 ${PWD}/.config/i3/toggle_touchpad.sh ${HOME}/.config/i3/toggle_touchpad.sh

polybar:
	${info Rendering polybar config}
	template-config ./.config/polybar/config

install_polybar: polybar
	${info Installing polybar config files}
	mkdir -p ${HOME}/.config/polybar
	install -m 644 ${PWD}/.config/polybar/config.out ${HOME}/.config/polybar/config

install_alacritty:
	${info Installing alacritty config files}
	mkdir -p ${HOME}/.config/alacritty
	install -m 644 ${PWD}/.config/alacritty/alacritty.yml ${HOME}/.config/alacritty/alacritty.yml

install_vim:
	${info Installing vim config files}
	install -m 644 ${PWD}/.vimrc ${HOME}/.vimrc

install_nvim: install_vim
	${info Installing nvim config files}
	mkdir -p ${HOME}/.config/nvim
	install -m 644 ${PWD}/.config/nvim/init.vim ${HOME}/.config/nvim/init.vim

install_zsh:
	${info Installing zsh config files}
	install -m 644 ${PWD}/.zshrc ${HOME}/.zshrc
