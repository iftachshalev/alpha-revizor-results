.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, 32 
BT DX, AX 
AND SIL, 39 # instrumentation
MOV DL, BL 
MOVSX RSI, DL 
SETB AL 
CMOVNLE RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDX] 
OR AX, 9888 
MOV DIL, 80 
TEST RAX, -593573553 
JMP .bb_main.1 
.bb_main.1:
TEST RCX, RCX 
BT BX, 11 
AND DIL, -31 # instrumentation
SETNP BL 
SETZ DIL 
CWD  
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND DIL, 66 # instrumentation
CMOVO EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RBX] 
XOR SIL, 39 
CMOVNBE RDI, RDX 
OR BX, 0b1000000000000000 # instrumentation
BSR DI, BX 
AND RAX, -808276715 
AND ECX, EAX 
JMP .bb_main.3 
.bb_main.3:
BTR RAX, 48 
AND DIL, 77 # instrumentation
CMOVNS DX, BX 
CMOVS RBX, RDX 
TEST AL, 80 
AND EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], 4 
AND DIL, 76 # instrumentation
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RAX], CX 
CMOVNLE SI, SI 
SETB BL 
XCHG BL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
