; hello_world.s (Linux x86_64)
section .data
    msg db "Hello, World!", 0xA   ; 改行付きの文字列
    len equ $ - msg

section .text
    global _start

_start:
    ; sys_write (ファイル記述子1 = stdout)
    mov rax, 1          ; sys_write のシステムコール番号
    mov rdi, 1          ; stdout
    mov rsi, msg        ; メッセージのアドレス
    mov rdx, len        ; メッセージの長さ
    syscall

    ; sys_exit
    mov rax, 60         ; sys_exit のシステムコール番号
    xor rdi, rdi        ; 終了コード 0
    syscall

