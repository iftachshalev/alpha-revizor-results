.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 21 # instrumentation
CMOVBE EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
CMOVNS CX, DX 
XOR DIL, 115 
SETO SIL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 34 # instrumentation
CMOVO EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], -63 
STC  
SETS AL 
BTC BX, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], SI 
SETS AL 
JMP .bb_main.2 
.bb_main.2:
BTR EDX, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RCX] 
AND SIL, -38 # instrumentation
CMOVS ESI, EDI 
OR RBX, 106 
AND RSI, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RSI] 
MOV RDX, -8017538334105229046 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, -43 # instrumentation
MOV CX, CX 
SETNL BL 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DIL 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], SI 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDX 
AND DIL, -6 # instrumentation
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RSI], 2 
OR EAX, -78 
SETB CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
