# vim plugin install notes

## pathogen (plugin manager)
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
[[ ! -f /Users/derek/.vim/autoload/pathogen.vim ]] && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## fugitive (git)
cd ~/.vim/bundle && \
[[ ! -d vim-fugitive ]] && \
git clone git://github.com/tpope/vim-fugitive.git && \
vim -u NONE -c "helptags vim-fugitive/doc" -c q

## syntastic
cd ~/.vim/bundle && \
[[ ! -d syntastic ]] && \
git clone https://github.com/scrooloose/syntastic.git

## rails
cd ~/.vim/bundle && \
[[ ! -d vim-rails ]] && \
git clone git://github.com/tpope/vim-rails.git

## bundler
cd ~/.vim/bundle && \
[[ ! -d vim-bundler ]] && \
git clone git://github.com/tpope/vim-bundler.git

## endwise (helps to end certain structures automatically like adding end following an if in ruby)
cd ~/.vim/bundle && \
[[ ! -d vim-endwise ]] && \
git clone git://github.com/tpope/vim-endwise.git

## projectionist
cd ~/.vim/bundle && \
[[ ! -d vim-projectionist ]] && \
git clone git://github.com/tpope/vim-projectionist.git

## rake (requires projectionist)
cd ~/.vim/bundle && \
[[ ! -d vim-rake ]] && \
git clone git://github.com/tpope/vim-rake.git

## commentary (easily comment/uncomment code blocks)
cd ~/.vim/bundle && \
[[ ! -d vim-commentary ]] && \
git clone git://github.com/tpope/vim-commentary.git

## vim-monochrome (colorscheme)
cd ~/.vim/bundle && \
[[ ! -d vim-monochrome ]] && \
git clone https://github.com/fxn/vim-monochrome.git

## nerdtree (tree file explorer)
cd ~/.vim/bundle && \
[[ ! -d nerdtree ]] && \
git clone https://github.com/scrooloose/nerdtree.git

## supertab (code completion)
cd ~/.vim/bundle && \
[[ ! -d supertab ]] && \
git clone https://github.com/ervandew/supertab.git

## airline (status bar)
cd ~/.vim/bundle && \
[[ ! -d vim-airline ]] && \
git clone https://github.com/vim-airline/vim-airline.git

## airline-themes (status bar)
cd ~/.vim/bundle && \
[[ ! -d vim-airline-themes ]] && \
git clone https://github.com/vim-airline/vim-airline-themes

## tcomment (quick comment/uncomment)
cd ~/.vim/bundle && \
[[ ! -d tcomment_vim ]] && \
git clone https://github.com/tomtom/tcomment_vim.git

## editorconfig
cd ~/.vim/bundle && \
git clone https://github.com/editorconfig/editorconfig-vim.git

## update all
for d in ~/.vim/bundle/*; do cd $d; git pull; done
