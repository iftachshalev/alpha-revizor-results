.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RAX, -1753322709 
CMPXCHG SI, SI 
CMPXCHG DL, DL 
BTS CX, -2 
SETBE BL 
CMOVNB RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], EAX 
CMOVZ RCX, RSI 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMPXCHG EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RSI] 
SETS DL 
SETNS BL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], -97 
CMOVNP RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTS qword ptr [R14 + RSI], RDX 
AND EAX, -159748525 
SETNLE SIL 
OR CX, 0b1000000000000000 # instrumentation
BSF SI, CX 
AND RAX, 259219382 
CMOVNLE DI, BX 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], AL 
BTR BX, BX 
MOVSX RBX, DI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
AND DIL, -34 # instrumentation
CMOVLE DX, DX 
XADD CL, AL 
SETNB CL 
SETO AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
