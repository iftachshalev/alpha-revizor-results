.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RAX, 2045344239 
SETZ CL 
CMOVZ SI, SI 
SETLE DL 
XADD EAX, EBX 
OR CX, SI 
MOV SI, SI 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RCX 
AND SIL, -8 # instrumentation
CMC  
SETB AL 
SETLE CL 
TEST AL, 45 
SETNL AL 
AND RCX, RCX 
XCHG DL, BL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 19 # instrumentation
SETNL DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], ECX 
SETNO CL 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], BL 
TEST RCX, RCX 
OR RSI, 15 
BT BX, CX 
AND DIL, 42 # instrumentation
CMOVZ EDX, ECX 
NOT EBX 
CMOVP RSI, RDX 
BTR RBX, -106 
XOR AX, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
OR ESI, ECX 
MOVSX BX, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDX] 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
