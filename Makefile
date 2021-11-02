default:
	${warn Specify an install target}

install: install_i3 install_polybar symlink_awesomewm symlink_alacritty symlink_vim symlink_nvim symlink_zsh

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

symlink_awesomewm:
	${info Symlinking awesomewm config files}
	ln -sf ${PWD}/.config/awesome ${HOME}/.config/awesome

polybar:
	${info Rendering polybar config}
	template-config ./.config/polybar/config

install_polybar: polybar
	${info Installing polybar config files}
	mkdir -p ${HOME}/.config/polybar
	install -m 644 ${PWD}/.config/polybar/config.out ${HOME}/.config/polybar/config

symlink_alacritty:
	${info Symlinking alacritty config files}
	mkdir -p ${HOME}/.config/alacritty
	ln -sf ${PWD}/.config/alacritty/alacritty.yml ${HOME}/.config/alacritty/alacritty.yml

symlink_vim:
	${info Symlinking vim config files}
	ln -sf ${PWD}/.vimrc ${HOME}/.vimrc

symlink_nvim: symlink_vim
	${info Symlinking nvim config files}
	mkdir -p ${HOME}/.config/nvim
	ln -sf ${PWD}/.config/nvim/init.vim ${HOME}/.config/nvim/init.vim

symlink_zsh:
	${info Symlinking zsh config files}
	ln -sf ${PWD}/.zshrc ${HOME}/.zshrc
