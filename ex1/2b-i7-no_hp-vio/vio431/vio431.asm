.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RBX], CX 
XCHG ECX, ECX 
CMOVNZ RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDI] 
AND SIL, 126 # instrumentation
CMOVNBE RAX, RBX 
MOVZX RBX, CX 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RCX], 5 
MOV EDI, EBX 
STC  
MOVZX AX, BL 
TEST CL, 10 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], 7 
AND DIL, 28 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLC  
CMOVNB AX, DX 
MOVZX AX, DL 
AND RDX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDX] 
NOP  
NOP  
TEST AX, -18699 
AND RAX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RAX], 5 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EBX 
TEST RBX, 965866840 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], SI 
OR DIL, AL 
MOVZX AX, BL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RSI], 4 
MOV SIL, DL 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RSI], 2 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
