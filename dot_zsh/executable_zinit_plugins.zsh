zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::systemd
zinit snippet OMZP::vagrant
zinit snippet OMZP::gcloud
zinit snippet OMZP::aws
zinit snippet OMZP::autojump
zinit snippet OMZP::terraform
zinit ice svn as=completions; zinit snippet OMZP::docker

zinit snippet OMZL::completion.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::directories.zsh
zinit snippet OMZL::git.zsh
zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZL::clipboard.zsh


zinit load zdharma-continuum/zinit-annex-patch-dl # allows downloading files and applying patches
zinit load zdharma-continuum/zinit-annex-bin-gem-node

zinit load popstas/zsh-command-time
zinit load zsh-users/zsh-autosuggestions
zinit ice blockf; zinit load zsh-users/zsh-completions
zinit ice depth=1; zinit load romkatv/powerlevel10k
zinit load zpm-zsh/clipboard
zinit load zpm-zsh/undollar
zinit load z-shell/F-Sy-H
zinit load supercrabtree/k
zinit load sparsick/ansible-zsh
zinit load Tarrasch/zsh-autoenv
zinit load djui/alias-tips
zinit ice atload="autoload -U +X bashcompinit && bashcompinit" zinit load macunha1/zsh-terraform
zinit ice wait=!0 lucid; zinit ice atload='[[ $VIRTUAL_ENV ]]; export PATH=$VIRTUAL_ENV/bin:$PATH'; zinit load mattberther/zsh-pyenv # it prevents overriding PATH when using virtualenv
zinit ice as=command from=gh-r sbin=fzf id-as=fzf; zinit load junegunn/fzf
zinit ice depth"1" multisrc"shell/{completion,key-bindings}.zsh" pick="/dev/null"; zinit load junegunn/fzf
zinit ice wait=!0 lucid; zinit load lukechilds/zsh-nvm
zinit ice sbin=bin/{tfenv,terraform}; zinit load tfutils/tfenv
zinit ice sbin=bin/{tgenv,terragrunt}; zinit load cunymatthieu/tgenv
zinit ice as=completions pick=completions/_rtx atinit="$(rtx activate zsh)"; zi load jdxcode/rtx

zinit load agkozak/zsh-z
zinit ice atclone="pip3 install ." atpull="%atclone" pick="virtualenvwrapper_lazy.sh" ver="4.8.4"; zinit load python-virtualenvwrapper/virtualenvwrapper
