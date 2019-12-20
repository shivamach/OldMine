.model small
.stack
.data
n1 dw 1234h,6731h,2222h,0001h,2310h
len dw ($-n1)/2
n2 dw 10 dup(0) ;n2 for forward transfer,n3 for reversed
n3 dw 10dup(0)  ;assumed here that max size of n1 is 10,but it can be more doesnt make a difference
.code
mov ax,@data
mov ds,ax        ;this code is for moving a block of data into location n2
mov cx,len       ;counter cx has the size of array n1
lea si,n1
lea di,n2        ;loading pointers to locations
lea bx,n3       ;bx will be used for moving data in reverse
forwardd:
mov ax,[si]
mov [di],ax     ;moving data to n2, n2 will be exactly like n1
add si,02h      ;next element in n1
add di,02h      ;next empty space in n2 to move the new n1 element
loop forwardd
                ;now si is at the last element in n1 already 
mov cx,len      ;if only want reverse then add si with len*2 after lea si,n1
reversed:
mov ax,[si]
mov [bx],ax     ;transfer of data
sub si,02h      ;one element before the previous one in n1
add bx,02h      ;next empty slot for new element in n3
loop reversed

mov ah,4ch      ;ending the code
int 21h         ;we always add or subtract 02h as numbers are 16bit, do the same with 01h if numbers are 8bit
end


;expected o/p
;n1 same as above
;n2 same as n1
;n3 will be reversed n1
;to read you must know how 16 bit is stored in memory
;example 1234h is stored as 34 12 in both n2 and n1 initial places
