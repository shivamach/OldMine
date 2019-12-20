.model small
.stack
.data
										;this code here is to show how different basic interrupts are used
msg db "this message is goint to be displayed using mov ah,09h"0ah,0dh
in db 20 dup('$')  								;this is the empty place to take a string input from user
charin db 00h 			;to take a char input 
charout db 32h                  ;to display number two, ascii of 2 is 32
.code
mov ax,@data
mov ds,ax		;ds initialised
lea dx,msg	;lea dx with msg to be displayed
mov ah,09h
int 21h  	;displaying the message using int 21h mov ah,09h

lea dx,in
mov ah,3fh
int 21h        ;mov ah,3fh will take a string input from user and store in it memore location at dx value
		;you can display this string using mov ah,09h, but make sure that the string has $ in the end, as its made obvious here by dup('$')
	

mov dl,0ah
mov ah,02h      ;look up last part,we are using this to go to the next line
int 21h 
		;make the user end the string with a $ for safety if input size not known
lea dx,in
mov ah,09h
int 21		;displaying the string input we took like we did before


mov dl,0ah
mov ah,02h    go to the next instance this interrupt is used in this code for comment info
int 21h 

mov ah,01h 	;this interrupt thing takes on character from user keyboard and stores its ascii value in al,you can move it to a memory location
int 21h
mov charin,al


mov dl,0ah
mov ah,02h   ;this one is used to display the character whose ascii value is stored in dl.here we are going to next line as 0ah is ascii for 'enter'
int 21h 

mov dl,al
mov ah,02h   ;here we are displaying the charin that we just gave in
int 21h


mov ah,09h	;the code is over stop execution code complete interrupr thingy
int 21h
end
