[BITS 64]

extern puts
extern scanf

SECTION .bss
  inp:    resb 0x80

SECTION .data

  hello   db "Hello, World!",0

SECTION .text
  global main

main:
  mov     rcx, hello
  call    puts
  mov     rax, q1
  push    rax
  ret

q1:
  db "%63s", 0; this happens to also be `and` instruction 
  jmp     q2.actual
  int3

q2:
  db      0x28
  db      "Enter f1ag: ", 0
.actual:
  mov     rcx, q2+1
  movzx   rax, byte[rcx - 1]
  vzeroupper
  sub     rsp, rax
  call    puts
  call    .input_addr
  mov     rcx, q1
  call    scanf
  call    .input_addr
  add     rsp, 0x28
  jnz     q3.start
.input_addr:
  mov     rdx, inp
  ret


q3:
  db      0x48, 0xb9
.roptable:
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .part0-.inst
  dd      .part1-.inst
  dd      .part2-.inst
  dd      .part3-.inst
  dd      .part4-.inst
  dd      .part5-.inst
  dd      .part6-.inst
  dd      .part7-.inst
  dd      .part8-.inst
  dd      .part9-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .part10-.inst
  dd      .part11-.inst
  dd      .part12-.inst
  dd      .part13-.inst
  dd      .part14-.inst
  dd      .part15-.inst
  dd      .part16-.inst
  dd      .part17-.inst
  dd      .part18-.inst
  dd      .part19-.inst
  dd      .part20-.inst
  dd      .part21-.inst
  dd      .part22-.inst
  dd      .part23-.inst
  dd      .part24-.inst
  dd      .part25-.inst
  dd      .part26-.inst
  dd      .part27-.inst
  dd      .part28-.inst
  dd      .part29-.inst
  dd      .part30-.inst
  dd      .part31-.inst
  dd      .part32-.inst
  dd      .part33-.inst
  dd      .part34-.inst
  dd      .part35-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .part36-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .part37-.inst
  dd      .empty-.inst
  dd      .part38-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
  dd      .empty-.inst
.roptable_end:
.inst:
  db      174, 220, 254, 49, 100, 40, 228, 222, 15, 195, 220, 93, 168, 204, 140, 249, 225, 174, 236, 16, 211, 207, 158, 156, 156, 59, 133, 170, 75, 68, 182, 76, 37, 36, 180, 157, 154, 123, 89, 166, 90, 152
.inst_end:
  db      0xc3, 0x23
.fix:
  rol     al, 4
  add     al, 0x90
  cmp     al, byte [r8 + r10]
  ;int3
  je      .clean
  ;lea     rcx, [r10 + 1]
  inc     rcx
.clean:
  inc     r10
  ret

.part38:
  inc     eax
.part37:
  inc     eax
.part36:
  inc     eax
.part35:
  inc     eax
.part34:
  inc     eax
.part33:
  inc     eax
.part32:
  inc     eax
.part31:
  inc     eax
.part30:
  inc     eax
.part29:
  inc     eax
.part28:
  inc     eax
.part27:
  inc     eax
.part26:
  inc     eax
.part25:
  inc     eax
.part24:
  inc     eax
.part23:
  inc     eax
.part22:
  inc     eax
.part21:
  inc     eax
.part20:
  inc     eax
.part19:
  inc     eax
.part18:
  inc     eax
.part17:
  inc     eax
.part16:
  inc     eax
.part15:
  inc     eax
.part14:
  inc     eax
.part13:
  inc     eax
.part12:
  inc     eax
.part11:
  inc     eax
.part10:
  inc     eax
.part9:
  inc     eax
.part8:
  inc     eax
.part7:
  inc     eax
.part6:
  inc     eax
.part5:
  inc     eax
.part4:
  inc     eax
.part3:
  inc     eax
.part2:
  inc     eax
.part1:
  inc     eax
.part0:
  pxor    xmm0, xmm1
.empty:
  ret
  db      0x31
.start:
  ; rdx: Input string
  ; r8:  gadget sequence
  ; r9:  gadget table
  mov     ecx, .inst_end-.inst
  mov     r9, .roptable
  mov     r8, .inst
  mov     rax, .end
  push    rax
.copy:
  mov     rax, .fix
  push    rax
  movzx   rax, byte [rdx+rcx-1]
  mov     eax, dword [r9+rax*4]
  add     rax, r8
  push    rax
  loop    .copy
  movzx   r10, byte [r8 + (.empty-.inst)]  
  xor     eax, eax
  xchg    rax, r10
  ret


.end:
  sub     rsp, 0x28
  xor     eax, eax 
  mov     rdx, .correct_s
  jrcxz   .correct
  mov     rdx, .incorrect_s
  dec     eax
.correct:
  xchg    rdx, rcx
  mov     [rsp+0x24], edx
  call    puts
  mov     eax, [rsp+0x24]
  add     rsp, 0x28
  ret

.correct_s:
  db      "Correct", 0
.incorrect_s:
  db      "Incorrect", 0

