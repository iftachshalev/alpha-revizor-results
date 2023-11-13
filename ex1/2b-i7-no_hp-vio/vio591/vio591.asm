.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 0 
CLC  
AND RAX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], 541887089 
AND EAX, -632257399 
MOVSX ESI, BL 
MOVSX EDX, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDX] 
AND BL, 35 
CMOVB RBX, RDI 
AND AL, BL 
MOV RBX, -7592915888374208106 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], ESI 
BTS RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], SI 
SETLE DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -102 # instrumentation
SETNL DL 
AND CL, -39 
CMOVP EBX, EDI 
STC  
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], -85 
CMOVZ RDX, RBX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDI 
TEST AL, AL 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], AL 
CMOVNP ECX, ECX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -207734953 
NOT BL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RCX] 
AND SIL, 29 # instrumentation
CMOVBE ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
