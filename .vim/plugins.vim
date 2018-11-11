"set the runtime path to include Vundle and initialize"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required"
Plugin 'VundleVim/Vundle.vim'

" Utility "
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'benmills/vimux'                                   " Easily interact with tmux from vim"
Plugin 'tpope/vim-fugitive'                               " Git helper"
Plugin 'tpope/vim-commentary'                             " Comment/uncomment lines with gcc or gc in visual mode"
Plugin 'Xuyuanp/nerdtree-git-plugin'                      " shows dirty files in NERDTree"
Plugin 'jiangmiao/auto-pairs'                             " Adds () {} automatically"
Plugin 'scrooloose/nerdcommenter'                         " Comment/uncomment source code"
Plugin 'terryma/vim-multiple-cursors'                     " Multiple cursor support"
Plugin 'nathanaelkane/vim-indent-guides'                  " Visually display indent lines"
Plugin 'junegunn/vim-pseudocl'                            " Required by vim-oblique"
Plugin 'junegunn/vim-oblique'                             " Colors search result and sets nohlsearch on cursor move"
Plugin 'junegunn/vim-easy-align'                          " Align code around arbitrary characters =,:"
Plugin 'itchyny/vim-cursorword'                           " Highlight the occurances of the word under the cursor"
Plugin 'kana/vim-textobj-user'                            " Add additional text objects"
Plugin 'kana/vim-textobj-function'                        " Add function based text objects"
Plugin 'thinca/vim-textobj-function-javascript'           " Add JS function object"
Plugin 'FooSoft/vim-argwrap'                              " Collapse or expand arguments for a function"
Plugin 'sunaku/vim-dasht'                                 " Show documentation for the word under the cursor"
Plugin 'sunaku/vim-hicterm'                               " Displays cterm colors"
Plugin 'edkolev/tmuxline.vim'                             " tmux line"

" Programming Support (Formatter, Linter,Highlighting, Snippets) "
Plugin 'pangloss/vim-javascript'                          " Javascript"
Plugin 'heavenshell/vim-jsdoc'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'leafgarland/typescript-vim'                       " TypeScript"
Plugin 'mxw/vim-jsx'                                      " JSX (React)"
Plugin 'othree/html5.vim'                                 " HTML"
Plugin 'hail2u/vim-css3-syntax'                           " CSS"
Plugin 'jparise/vim-graphql'                              " GraphQL"
Plugin 'SirVer/ultisnips'                                 " snippets"
Plugin 'epilande/vim-react-snippets'                      " snippets"
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }  " Prettier"
Plugin 'w0rp/ale'
Plugin 'mattn/emmet-vim'
Plugin 'cdata/vim-tagged-template'
Plugin 'junegunn/rainbow_parentheses.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-surround'                               " Surrounds text with quotes, tags, brackets etc..."
Plugin 'reedes/vim-pencil'
Plugin 'chrisbra/Colorizer'
Plugin 'wincent/terminus'                                 " Better vim + tmux"
Plugin 'metakirby5/codi.vim'                              " The interactive scratchpad Quakkejs"
Plugin 'sheerun/vim-polyglot'                             " A solid language pack for Vim."

" Theme / Interface "
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'"
Plugin 'dempfi/vim-airline-neka'
Plugin 'morhetz/gruvbox'
Plugin 'ayu-theme/ayu-vim'
Plugin 'ryanoasis/vim-devicons'


call vundle#end()

filetype plugin indent on