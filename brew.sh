#!/bin/sh

brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap jmespath/jmespath
brew tap iawaknahc/bin

brew install \
	bash \
	bash-completion@2 \
	bat \
	curl \
	fastmod \
	fd \
	fzf \
	git \
	gnupg \
	hadolint \
	pastel \
	pinentry-mac \
	ripgrep \
	rlwrap \
	shellcheck \
	shfmt \
	stow \
	tmux \
	uchardet \
	unrar \
	jmespath/jmespath/jp

brew cask install \
	font-source-han-sans \
	font-source-han-serif \
	font-source-han-mono

# font-source-han-noto-cjk
# This font includes font-source-han-sans font-source-han-serif font-source-han-code-jp

# font-source-han-code-jp
# This font is superseded by font-source-han-mono

# Other programs are better installed manually.
