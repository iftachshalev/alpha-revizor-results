.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 121 
CMPXCHG BL, CL # instrumentation
LAHF  
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], DX 
OR AL, BL 
CMOVNZ RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDX], 3 
AND EAX, ECX 
CMOVNLE BX, SI 
MOV ESI, ECX 
TEST CL, BL 
SETP DL 
MOV RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], AL 
SETZ AL 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BSWAP ESI 
BTC SI, 39 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], EBX 
AND RBX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RBX], 7 
MOV ESI, EDI 
AND AX, -23691 
CMOVNLE DI, AX 
CMOVNLE ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], 1 
XOR DX, 49 
SETNBE CL 
CMOVB SI, DI 
STC  
MOV RDX, RBX 
CMOVB EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], ESI 
AND RCX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
