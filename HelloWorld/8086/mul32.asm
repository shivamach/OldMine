.model small
.stack
.data
n1 dw 0ffffh,0ffffh
n2 dw 0ffffh,0ffffh
res dw 50 dup(0)
.code
mov ax,@data
mov ds,ax

mov ax,n1+2
mov bx,n2+2
mul bx
mov res,ax
mov res+2,dx  ;answer is going to be ffff fffe 0000 0001
              ;which will be stored in res in the format 0100 0000 feff ffff
mov ax,n1     ;counting res,res+2, res+4, res+6,
mov bx,n2+2   ;algorithm/logic is ovious, we are muliplying these and adding as we would on paper
mul bx
add res+2,ax
adc res+4,dx

mov ax,n1+2
mov bx,n2
mul bx
add res+2,ax
adc res+4,dx
adc res+6,0000h   ;this step is important to add carry of previous addition to
                  ;the next position as in the next step,
                  ; instead it will get added to res+4 position only which is false.
                  ;cant add a carry of addition to the addition that caused the carry
mov ax,n1
mul bx
add res+4,ax
adc res+6,dx


mov ah,4ch
int 21h
end
