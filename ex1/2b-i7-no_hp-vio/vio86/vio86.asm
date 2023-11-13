.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RAX, 875206446 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], 125 
SETNP BL 
TEST AX, AX 
AND RDX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], CL 
SETNBE CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RBX], 4 
MOVSX EDX, CL 
BTS EBX, -47 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RDI] 
AND DIL, 52 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 4 # instrumentation
SETNP DIL 
XOR AX, 18905 
OR AX, BX 
CMPXCHG EBX, EAX 
SETNBE AL 
XOR EBX, 75 
TEST EDX, -197931418 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RCX], 1 
AND RDI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RDI], RDI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDX] 
XADD CL, CL 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], 73 
BTR EBX, 32 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RSI 
CMOVS AX, SI 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
