.model small
.stack
.data
n1 dw 2306h
n2 dw 1394h
res dw 02 dup(0)
.code
mov ax,@data
mov ds,ax ;ds initialised
mov ax,n1   ;ax=n1
add ax,n2   ;ax=n1+n2
adc dx,0000h  ;dx= carry from addition of n1+n2 is kept here if there is any
mov res,dx
mov res+2,ax  ;res has the sum in it
mov ah,2ch
int 21h      ;code ends
end           ;this is a very basic code hello world of .asm
        ;continue this repo from there
