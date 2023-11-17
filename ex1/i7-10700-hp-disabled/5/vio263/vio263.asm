.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
TEST RDX, RDI 
CMPXCHG EDX, EDI 
XOR EAX, -1671303713 
AND RAX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RAX] 
BTR RBX, RDI 
BT RSI, RDI 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RSI 
XOR DI, -107 
CMOVNB DI, AX 
AND RSI, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTS dword ptr [R14 + RSI], EDI 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 127 # instrumentation
CMOVNS DX, BX 
BTR RSI, -126 
MOV RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
CMOVNZ RAX, RDX 
SETNB CL 
XOR BX, 25 
SETNO AL 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], RAX 
CMOVBE SI, SI 
TEST RCX, 1365344259 
BTC EAX, -14 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR AL, DL 
SETNLE SIL 
BTC ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
BTS BX, SI 
XCHG CX, AX 
AND RDI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BT word ptr [R14 + RDI], DI 
AND DIL, 49 # instrumentation
CMOVP DX, SI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
