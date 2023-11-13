.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG SIL, CL # instrumentation
AND DIL, 107 # instrumentation
LAHF  
CMOVNLE DI, BX 
OR RSI, RSI 
LEA AX, qword ptr [RAX + RSI + 10535] 
MOV DIL, 100 
CMPXCHG RCX, RDI 
OR BL, 78 
BTC ECX, ECX 
AND SIL, -42 # instrumentation
CMOVL BX, DI 
AND RDI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDI] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RSI], 4 
AND SIL, -75 # instrumentation
CMOVL EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], AL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], -12 
AND RDX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDX], 6 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], DIL 
OR EAX, -1747749577 
AND RCX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RCX], 4 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], ECX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RDI] 
SETNO CL 
STD  
CMOVP SI, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDX] 
BT RAX, RSI 
SETBE AL 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RAX] 
SETNLE AL 
SETNP BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
