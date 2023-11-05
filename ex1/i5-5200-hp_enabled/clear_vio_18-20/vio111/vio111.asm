.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR EDX, 126 
BTR RCX, RDI 
AND DIL, -105 # instrumentation
CMOVNO SI, DX 
CLD  
SETL BL 
CMOVNLE AX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], 0 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], RSI 
SETZ AL 
STC  
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], 1512 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RBX] 
MOV BL, CL 
CLC  
CMOVNZ EAX, EAX 
CMPXCHG RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RSI] 
CMOVNP EDX, EAX 
TEST AX, 25093 
XOR CL, AL 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -86 # instrumentation
CMOVNB RDI, RBX 
XCHG EDI, EDX 
CMOVNL RDI, RDI 
STC  
SETNP DL 
CMOVNB RDX, RDX 
BTC RAX, 43 
TEST ECX, 470877006 
MOVZX EAX, CL 
MOV EAX, 28075314 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
