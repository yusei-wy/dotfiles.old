# rm でゴミ箱に移動
alias rm='trash-put'

# ubuntu terminal color scheme
alias gogh='wget -O gogh https://git.io/vQgMr && chmod +x gogh && ./gogh && rm gogh'

# クリップボードにコピー
alias pbcopy='xsel --clipboard --input'

# Docker
alias dc='docker-compose'
alias dm='docker-machine'

# # neovim
alias vi='nvim'
alias vim='nvim'

alias mkcd='source ~/bin/mkcd.sh'

# emacs
alias e='emacs -nw'

# colordiff
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi

# gauche
alias gosh='rlwrap gosh -i -I "."'
