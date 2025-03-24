# practice_assembly

## How to build and run

```shell
$docker compose up -d
$docker compose exec assembly bash
root@368fc41c4d81:/workspace# nasm -f elf64 hello_world.s -o hello_world.o
root@368fc41c4d81:/workspace# ld -m elf_x86_64 hello_world.o -o hello_world -e _start
root@368fc41c4d81:/workspace# ./hello_world
Hello, World!
```
