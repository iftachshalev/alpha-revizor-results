.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT RCX, RDX 
BTC EAX, 63 
CWDE  
BTC AX, -25 
BTS AX, -8 
AND ESI, 63 
CMC  
XADD SIL, DL 
BTC RCX, RCX 
MOV DL, 29 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], EAX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST CL, CL 
CMOVL DX, DX 
XCHG RBX, RAX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDX 
AND SIL, 63 # instrumentation
CMOVNS EDX, EBX 
XOR CX, -118 
CMOVBE RSI, RBX 
MOV RSI, RCX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EAX 
OR EDX, -25 
CMOVL RDI, RBX 
AND RAX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTR word ptr [R14 + RAX], BX 
AND AX, -4746 
CMOVZ EDX, EAX 
TEST DL, -55 
OR EAX, 85 
CMOVB RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RSI], 3 
AND SIL, 65 # instrumentation
SETNLE AL 
XCHG RBX, RAX 
XOR RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
