.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RAX, -784761977 
CMOVL EAX, EDX 
CMOVNL DX, DX 
AND RDX, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RSI], ECX 
STD  
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
BTR RDX, RDX 
AND BL, BL 
SETNP SIL 
SETNL SIL 
XCHG RAX, RBX 
MOVSX BX, DIL 
CMOVP RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RBX] 
XOR EDI, 42 
CMOVLE ECX, EDX 
NOP  
OR AL, DIL 
XADD DL, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RDX], 1 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, RDI 
MOV SIL, -103 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RAX], 0 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], -49 
LEA RDX, qword ptr [RDI + RSI] 
SETNZ DIL 
AND RAX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RAX], 6 
MOV BL, -11 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], DL 
OR ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
