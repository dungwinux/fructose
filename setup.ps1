$env:PATH = "$env:PATH;$env:LOCALAPPDATA\bin\NASM"
function compile {
  param($d)
  # Required: NASM, Windows, LLVM clang
  nasm -f win64 "$d.s" -o "$d.o"; clang "$d.o" -Xlinker "legacy_stdio_definitions.lib" -o "$d.exe"
}
function disasm {
  param($d)
  # Required: LLVM
  llvm-objdump --x86-asm-syntax=intel -d "$d"
}

# To apply script, call (watch out the beginning dot)
# . ./setup.ps1