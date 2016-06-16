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

## endwise (helps to end certain structures automatically like adding end following an if in ruby)
cd ~/.vim/bundle && \
git clone git://github.com/tpope/vim-endwise.git

## projectionist
cd ~/.vim/bundle && \
git clone git://github.com/tpope/vim-projectionist.git

## rake (requires projectionist)
cd ~/.vim/bundle && \
git clone git://github.com/tpope/vim-rake.git

## commentary (easily comment/uncomment code blocks)
cd ~/.vim/bundle && \
git clone git://github.com/tpope/vim-commentary.git

## vim-monochrome (colorscheme)
cd ~/.vim/bundle && \
git clone https://github.com/fxn/vim-monochrome.git
