#!/bin/bash

# 引数のチェック
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <source_file.s>"
  exit 1
fi

SOURCE_FILE="$1.s"
OBJ_FILE="$1.o"
TARGET="$1"

echo "[INFO] Assembling $SOURCE_FILE to $OBJ_FILE..."
nasm -f elf64 "$SOURCE_FILE" -o "$OBJ_FILE"
if [ $? -ne 0 ]; then
  echo "[ERROR] Assembly failed!"
  exit 1
fi

echo "[INFO] Linking $OBJ_FILE to create $TARGET..."
ld -m elf_x86_64 "$OBJ_FILE" -o "$TARGET" -e _start
if [ $? -ne 0 ]; then
  echo "[ERROR] Linking failed!"
  exit 1
fi

echo "[INFO] Build complete. Run ./$TARGET to execute."

