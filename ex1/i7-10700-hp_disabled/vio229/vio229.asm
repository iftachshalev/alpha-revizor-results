.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -4 # instrumentation
CMOVNZ RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], EDX 
CMOVNL EDI, ESI 
AND BL, -77 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RCX] 
AND DL, SIL 
CMOVNL ESI, ECX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, -123 # instrumentation
SETNLE BL 
CMOVP EBX, EDX 
XOR ESI, -96 
AND RDI, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RDI] 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR EBX, -39 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], 21983 
BTC EBX, ECX 
AND DIL, -32 # instrumentation
SETNP DL 
XOR BL, SIL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], RAX 
STC  
SETNZ CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
SETNBE BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RBX] 
XOR RAX, 122 
OR RSI, 44 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RAX] 
SETP DL 
OR RAX, 83 
XADD DX, SI 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
OR CX, 0b1000000000000000 # instrumentation
BSR AX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
