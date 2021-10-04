let g:startify_custom_header = [
  \'     _   _ _____ _______ ______  _____ _    _',
  \'    | \ | |_   _|__   __|  ____|/ ____| |  | |',
  \'    |  \| | | |    | |  | |__  | (___ | |__| |',
  \'    | . ` | | |    | |  |  __|  \___ \|  __  |',
  \'    | |\  |_| |_   | |  | |____ ____) | |  | |',
  \'    |_| \_|_____|  |_|  |______|_____/|_|  |_|',
  \]

let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                         },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()]  },
          \ { 'type': 'sessions',  'header': ['   Sessions']                      },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                     },
          \]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_bookmarks = [
  \ { 'c': '~/.config/bspwm/autostart'  },
  \ { 'i': '~/.config/nvim/init.vim'  },
  \ { 'z': '~/.zshrc'  },
  \ { 'd': '~/Downloads'},
  \ { 'p': '/mnt/Projects'},
  \ { 's': '~/.config/i3blocks/scripts'},
  \]

let g:startify_enable_special = 0

