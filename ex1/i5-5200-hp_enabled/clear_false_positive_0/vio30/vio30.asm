.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RSI] 
AND RBX, RDI 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDI 
AND DIL, 59 # instrumentation
SETO SIL 
XADD SI, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RSI], 6 
XOR SI, -82 
AND RCX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RCX] 
SETNS BL 
AND AX, -66 
XOR SIL, 15 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RBX] 
BT AX, SI 
XADD SI, BX 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -16 # instrumentation
CMOVP EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDX] 
XOR SIL, DIL 
SETO AL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], BL 
AND EDI, EBX 
TEST RDI, RDX 
BTR RCX, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], 44 
BSWAP EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], RDI 
AND RSI, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTS word ptr [R14 + RSI], CX 
XOR DIL, DL 
SETNBE CL 
SETS CL 
CMPXCHG CX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
