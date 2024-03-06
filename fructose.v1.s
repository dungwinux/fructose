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
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .part0
  dq      .part1
  dq      .part2
  dq      .part3
  dq      .part4
  dq      .part5
  dq      .part6
  dq      .part7
  dq      .part8
  dq      .part9
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .part10
  dq      .part11
  dq      .part12
  dq      .part13
  dq      .part14
  dq      .part15
  dq      .part16
  dq      .part17
  dq      .part18
  dq      .part19
  dq      .part20
  dq      .part21
  dq      .part22
  dq      .part23
  dq      .part24
  dq      .part25
  dq      .part26
  dq      .part27
  dq      .part28
  dq      .part29
  dq      .part30
  dq      .part31
  dq      .part32
  dq      .part33
  dq      .part34
  dq      .part35
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .part36
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .part37
  dq      .empty
  dq      .part38
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty
  dq      .empty

.roptable_end:
.inst:
  db      30, 67, 212, 15, 178, 125, 169, 154, 59, 245, 111, 246, 161, 203, 236, 111, 184, 139, 42, 100, 136, 138, 185, 189, 30, 195, 126, 169, 171, 186, 141, 42, 115, 121, 121, 89, 197, 158, 251, 48, 99, 152
.inst_end:
.fix:
  rol     al, 4
  cmp     al, byte [r8 + r10]
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
  mov     rax, [r9+rax*8]
  push    rax
  loop    .copy
  xor     eax, eax
  mov     r10, [r9]
  movzx   r10, byte [r10]
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

