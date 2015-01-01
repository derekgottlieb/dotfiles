# vim plugin install notes

## pathogen (plugin manager)
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## fugitive (git)
cd ~/.vim/bundle && \
git clone git://github.com/tpope/vim-fugitive.git && \
vim -u NONE -c "helptags vim-fugitive/doc" -c q

## syntastic
cd ~/.vim/bundle && \
git clone https://github.com/scrooloose/syntastic.git

## rails
cd ~/.vim/bundle && \
git clone git://github.com/tpope/vim-rails.git

## bundler
cd ~/.vim/bundle && \
git clone git://github.com/tpope/vim-bundler.git

