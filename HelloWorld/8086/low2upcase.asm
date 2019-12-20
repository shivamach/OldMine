.model small
.stack
.data
input db 100 dup('$')
msg db "enter the number characters to be entered"0ah,0dh
.code
mov ax,@data
mov ds,ax

lea dx,msg
mov ah,09h  ;printing message msg on screen
int 21h

mov ah,01h
int 21h
mov cl,al   ;taking the value of numer of elements to be entered into cl
sub cl,30h  ;value can be only between 0-9

lea dx,input
mov ah,3fh
int 21h     ;taking string input

lea si,input
l1:mov al,[si]
sub al,20h
mov [si],al      ;subtracting 20h from ascii value of each lower case alphabet to make them uppercase
inc si
loop l1          ;cl is counter with value of number of characters entered

mov dl,0ah
mov ah,02h    ;enter
int 21h

lea dx,input
mov ah,09h
int 21h       ;displaying the the converted sstring

mov ah,4ch
int 21h
entered      ;code ends
