.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 79 
CLD  
SETS CL 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 37 # instrumentation
CMOVO ECX, ESI 
OR DX, DI 
BT ESI, 47 
BT DI, 70 
OR AL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDX] 
CBW  
CMOVNB SI, AX 
BTS RBX, RBX 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 67 # instrumentation
NOT BL 
CBW  
CMOVNLE DX, AX 
XADD SIL, DL 
XCHG BL, BL 
SETL AL 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
LEA EDI, qword ptr [RDI + RBX + 37446] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
OR AX, -28 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], DX 
CMOVO AX, BX 
BTR RSI, RCX 
JMP .bb_main.4 
.bb_main.4:
BTR ECX, 124 
OR SI, 15 
XOR DIL, -67 
BTC EBX, EAX 
SETNZ SIL 
AND RCX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTS dword ptr [R14 + RCX], EAX 
AND ECX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
