.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -4 # instrumentation
CMOVNB RDI, RDI 
MOVSX ECX, BL 
CMPXCHG DIL, DL 
BTR DI, CX 
AND SIL, 90 # instrumentation
SAHF  
CMOVNB RAX, RDX 
NOP  
CMOVNLE AX, SI 
XCHG DX, DX 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR DX, 87 
BT RDI, -118 
BTC AX, SI 
AND RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], ESI 
MOVSX CX, BL 
SETNL DIL 
XADD AL, DL 
BT RAX, RBX 
BTS BX, 108 
AND DL, DL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RAX], 6 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RDI 
LEA EDX, qword ptr [RCX + RDI + 23820] 
XOR RAX, -1169488448 
CMOVL ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RSI] 
SETNLE DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDI] 
CMOVS SI, CX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
