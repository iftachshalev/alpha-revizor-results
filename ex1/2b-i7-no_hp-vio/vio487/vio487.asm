.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], RAX 
STC  
XOR BL, DL 
BT CX, CX 
TEST DX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RSI], RBX 
AND SIL, 96 
XADD SIL, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], 95 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], BL 
AND EDX, 126 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 17 
SETNZ DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 80 # instrumentation
CMC  
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], CL 
MOV RSI, RDI 
BTR RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDX] 
CMOVNBE RAX, RAX 
CMOVL CX, SI 
BTC RAX, -110 
AND RDI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDI] 
MOV SIL, SIL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EDX 
XOR EAX, EBX 
SETNP AL 
CWDE  
TEST DIL, DL 
AND BL, BL 
MOVZX EBX, AL 
SETNLE DL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
