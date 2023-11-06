.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RSI] 
CMOVS RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], CX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTC dword ptr [R14 + RBX], EAX 
XOR DIL, -85 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RBX] 
XCHG RCX, RAX 
AND AL, 121 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
MOV SIL, -11 
BTS RDI, -53 
AND SIL, 11 # instrumentation
SETS AL 
SETNO CL 
XADD RDX, RBX 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RSI] 
XOR SIL, SIL 
TEST AL, -115 
BT BX, CX 
AND ESI, 85 
CMOVS BX, BX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDX] 
OR BX, SI 
JMP .bb_main.4 
.bb_main.4:
AND SIL, 71 # instrumentation
MOV DIL, -72 
SETNB BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], EBX 
NOT AX 
BTS RBX, -99 
AND DIL, 124 # instrumentation
SETL DIL 
CMOVO EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDI], 3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
