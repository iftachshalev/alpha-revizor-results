.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTC dword ptr [R14 + RBX], ECX 
MOVZX RDX, BX 
MOVSX ESI, SI 
CMPXCHG AL, BL 
BTS EBX, EAX 
BTS SI, -95 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], CL 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, -7 # instrumentation
XCHG ESI, ECX 
CMOVBE ESI, EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], 70 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], 117 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], ECX 
CMOVNS RCX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RBX] 
OR AX, 0b1000000000000000 # instrumentation
BSR DI, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RDI] 
CWD  
SETNL DL 
JMP .bb_main.2 
.bb_main.2:
BTS RDI, -27 
AND DIL, -115 # instrumentation
CMOVNO CX, DX 
AND DIL, 34 
SETP CL 
TEST DL, BL 
BTR EDX, EDX 
AND SIL, 8 # instrumentation
SETNL DL 
OR RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], AX 
OR RCX, RDI 
SETNP CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
