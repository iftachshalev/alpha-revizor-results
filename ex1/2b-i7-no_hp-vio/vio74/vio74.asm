.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RAX] 
CMOVB RAX, RBX 
XOR RAX, 52040202 
SETZ BL 
SETBE DL 
AND RSI, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RSI] 
SETZ DIL 
TEST ESI, -1922166740 
SETB BL 
MOV DL, 54 
SETS BL 
BT SI, -10 
MOV RDX, -1507221393661845382 
CMOVNB EAX, ESI 
BTC EDI, 94 
XCHG RSI, RAX 
AND AL, -38 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 114 # instrumentation
MOV CL, BL 
SETP BL 
CMPXCHG RSI, RDX 
MOVZX EDX, DL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RAX] 
AND SIL, -63 # instrumentation
CMOVNZ DI, DX 
CMOVNB RSI, RDI 
OR RAX, 212893560 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RBX] 
BSWAP ECX 
TEST CX, BX 
XOR SIL, 101 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RCX] 
CMOVBE RCX, RDI 
XCHG DL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
