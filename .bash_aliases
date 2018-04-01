# rm でゴミ箱に移動
alias rm='trash-put'

# alias gvim='gvim --remote-tab-silent'

# クリップボードにコピー
alias pbcopy='xsel --clipboard --input'

# Docker
alias dc='docker-compose'
alias dm='docker-machine'
# # 起動時にローカルマシンの自動起動
# docker-machine start default
# eval $(docker-machine env default)

# neovim
alias vi='nvim'
alias vim='nvim'

alias mkcd='source ~/bin/mkcd.sh'

# colordiff
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi
