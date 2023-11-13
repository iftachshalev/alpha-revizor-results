.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], -26 
OR AX, 0b1000000000000000 # instrumentation
BSR SI, AX 
AND DIL, -48 # instrumentation
SETS DL 
BT CX, 82 
BTR RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], CL 
BTC RDI, -25 
MOV RDX, -7243589287640418172 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], 71 
SETL DL 
MOVZX AX, DL 
OR SIL, 98 
MOVSX EDX, DL 
AND RAX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RAX], 1 
AND SIL, -57 # instrumentation
SETNLE CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RDI] 
CMPXCHG ECX, EDI 
SETNO AL 
XADD DL, DL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 117 # instrumentation
SETL CL 
XOR EAX, -1560837666 
OR AX, 0b1000000000000000 # instrumentation
BSR CX, AX 
AND SIL, -20 # instrumentation
CMOVBE CX, AX 
MOV CL, BL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], -125 
BTC AX, -11 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
CMOVNZ CX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDI] 
CMOVNS RSI, RDX 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
