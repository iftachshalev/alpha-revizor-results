.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, RBX 
SETNBE AL 
TEST RSI, 1652948847 
BTR RAX, RCX 
BTC EDX, 118 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDX], RBX 
XOR RAX, 39 
XOR EAX, 182778121 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RSI] 
MOVSX SI, DL 
BTR RSI, RAX 
AND SIL, 105 # instrumentation
CBW  
SETNP CL 
SETZ CL 
SETNL DIL 
CMPXCHG EBX, EDX 
CMOVP RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], EAX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDI] 
XCHG CX, DX 
XOR EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RDI 
CMOVNB CX, DX 
AND RDI, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RSI] 
NOT SIL 
CMC  
MOV AL, 72 
MOVZX EAX, BL 
OR RSI, -42 
CMOVNO ESI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
