SPC h d h / C-h d h / SPC h d s / C-h d s - The documentation

// in catalog /
emacsclient -e '(kill-emacs)'
usr/bin/emacs --daemon &
emacsclient -c -a 'emacs'

//i3wm shortcut

//emacs

Alt+x [команды]
Splugins

C-z - [evil mod vim] 

space-
		f p - directory
		. - file-man + create-file
		b - list of last bufers
//?		k - kill bufer
	
C-x compile - [компиляция Си]
	gcc file.c
	shell ./a.out
	C-w C-y - [renamefile]
C-x 2 - горизонтальные окна
С-x 3 - вертикальные окна
C-x o - переключение фокуса по окнам
С-x 0 - закрыть окно
С-x 1 - закрыть все кромме текущего
C-x C-f - [open-file] space-.
C-x C-d - [open-directory]

C-x d   - [switch-directory][directory]
C-x C-s [save]
C-x C-w [save-as]
C-x C-f - 	[open file]
	arrow - jump on bufer page

M-x имя плагина - активация плагина
	shell - [terminal]
	neotree
	delete-file
	server-start
	rename-file

C-w c - close buffer(window)
	c - закрыть окно в сплите
	v - дублировать окно в сплит
	[arrow] - перемещение по окнам

C-s - поиск слов

C-v	[move-down-screen]
M-v	[move-up-screen]

# M-w	[copy]
# C-y	[paste]
# C-w	[cut]

C-g 	[прервать-комманду]
#C-c C-c[прервать-выполнение-в-терминале]
C-x u   [отменить undo]
C-l		[очистить экран]

//Move
C-p/n/b/f  [4-arrow]
M-b/f  [left-right-arrow]
C-a/e 	   [to-start/to-end]
M-a/e 	   [to-start/to-end](paragraf)

C-u 8 C-p/n/b/f/a/e  [move-on-8-step]
C-u 8 A-a/e [move-on-8-paragraf]









//vim
:w - save
:w test.txt - save file text.txt
:q - exit
:q! - quit&no-save
:wq - save&quit
from shell - vimtutor
from vim - :help tutor
i - insert mode

mod
	normal
	insert
	virtual
	explorer

//normal mode
r - redo
u - undo

// move
Ww - move to next word
Bb - move to prev word
G - move to end

esc - cmd mode

dd - del(cut) line
dw - del word
d - del char
d2w - del two word

yy - [copy(yank) line]
:%y // :%y+ // :%y"+ - [copy all in bufer]
yiw - copy word
y% - copy in bracers
h: clipboard - copy to OS

"+p - [put it]
p - put

 
//explorer mode
d - create dir
% - create file
 - cut



