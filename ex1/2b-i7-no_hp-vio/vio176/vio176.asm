.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -97 # instrumentation
SETNBE DL 
BT RSI, -35 
SETNBE BL 
BT RSI, 7 
AND SIL, -119 # instrumentation
CMOVP RSI, RBX 
SETNL AL 
XOR EAX, -896107987 
XCHG CL, BL 
CMOVNBE EDX, ECX 
BT DX, -119 
XCHG CX, AX 
CMPXCHG RBX, RAX 
XADD RDX, RAX 
SETNZ DL 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 1883865020 
AND DL, -54 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], -95 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RCX] 
STC  
AND RDI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDI] 
BT EDX, ECX 
OR AL, 69 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
NOT SI 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], DIL 
LEA RCX, qword ptr [RAX] 
XOR DL, -111 
CMOVNL DI, CX 
SETB DIL 
MOVSX ESI, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
