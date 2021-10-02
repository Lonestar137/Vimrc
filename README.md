# Vimrc

### Install  
1. Rename to .vimrc and place in ~/home directory or wherever you have your current vimrc to use.
2. Macros in the rc should automatically install and update plugins upon vim launch.  Or you could, open .vimrc in Vim and type :PlugInstall and :source %


### Contains

Gruvbox  - dark colorscheme 
rip grep - project wide keyword search
syntax highlighting
vim man - view man pages in vim.
rtags - indexing agent 
ctrl p - directory keyword search( similar to rip grep)
YouCompleteMe - code completion
Undotree - undo history visualizer
Autoclose - autoclosing brackets for html etc . . .
nerdtree - directory navigation.



#### Unique keybinds:

*leader* = space  
  leader h,l,j,k - Move between windows, left, right, up, down respectively.  
  leader a, f, d, s - resize windows.  
  n, N, J - Perform normal function but center to screen.  
    
  leader n - toggles NerdTree for directory navigation.  
  leader t - creates a new tab.  
  
#### Insert mode keybinds:  

   , . ! ? [ { (   - When typed, these characters create an undo break.  Meaning pressing undo will undo the text until it reachs one of these characters.
    
#### Visual Mode:


   J, K - Move selected text line up or down.
    
    
    


