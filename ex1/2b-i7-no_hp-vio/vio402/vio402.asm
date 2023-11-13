.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RAX, RCX 
BT RDI, -110 
CMOVZ RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
SETNP DL 
BT RAX, RBX 
SETNBE BL 
OR BL, -25 
MOVZX EDI, BL 
XCHG RBX, RBX 
AND AL, 26 
NOT RBX 
CMOVNO BX, BX 
MOVZX ECX, DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 55 # instrumentation
CMOVNL RSI, RDI 
NOT DL 
SETNO DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], -60 
MOVZX RBX, BX 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND EAX, 1083625963 
BTS EBX, ESI 
TEST RAX, 1782989468 
SETS AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], EDX 
CMOVP DI, BX 
BTC RSI, -88 
AND SIL, -119 # instrumentation
CMOVP ECX, EBX 
CMOVNO DI, CX 
CMOVB EAX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
