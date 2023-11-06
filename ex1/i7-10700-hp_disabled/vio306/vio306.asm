.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 20 # instrumentation
CMOVBE EAX, EBX 
BTS RSI, RSI 
AND DIL, 77 # instrumentation
CMC  
LEA ECX, qword ptr [RDX + RDI + 24222] 
CMOVNO EAX, EBX 
BTC BX, 116 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 112 # instrumentation
BTC BX, CX 
CWD  
CMOVZ DX, CX 
BTC CX, 21 
CMOVNB DI, DI 
XOR SIL, 11 
CMOVNP EDI, ESI 
XOR RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], -79 
OR RAX, -1936886740 
SETP BL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLC  
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
CMOVNL RCX, RDX 
SETBE AL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 36 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RBX 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -40 # instrumentation
CMOVP RDI, RDX 
MOV RBX, -3200037592233553651 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], 46 
SETNBE AL 
CMOVP ESI, EAX 
XCHG EDX, EAX 
CMOVNL RAX, RSI 
CBW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
