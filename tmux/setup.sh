#!/bin/bash

rm -rf $HOME/dotfiles/tmux/plugins/tpm/
git clone -q https://github.com/tmux-plugins/tpm.git \
             $HOME/dotfiles/tmux/plugins/tpm/

rm -rf $HOME/dotfiles/tmux/plugins/tmux-themepack/
git clone -q https://github.com/jimeh/tmux-themepack.git \
             $HOME/dotfiles/tmux/plugins/tmux-themepack/

rm -rf $HOME/dotfiles/tmux/plugins/tmux-sensible
git clone -q https://github.com/tmux-plugins/tmux-sensible.git \
             $HOME/dotfiles/tmux/plugins/tmux-sensible/

ln -sf ~/dotfiles/tmux/ ~/.tmux
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

if ! grep TMUX $HOME/.zshrc > /dev/null; then
    tee -a $HOME/.zshrc > /dev/null << END

# Added by
export TMUX_PRO_PATH="\$DTF_ROOT/tmux/launchers"
[ -z "\$TMUX"  ] && { tmux attach || exec tmux -f ~/.tmux.conf && exit; }
END
fi

