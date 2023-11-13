.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWDE  
AND RDI, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RDI] 
CMOVNZ DI, AX 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], 110 
SETNO CL 
BT CX, -56 
CMOVB BX, BX 
OR RAX, -260074818 
BTS RDI, 32 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], SI 
AND RDX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RDX] 
XOR DL, DL 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR EBX, EAX 
XCHG SIL, SIL 
OR RAX, -68 
SETNO DL 
AND RCX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RCX] 
CMOVO CX, SI 
CMOVNBE RAX, RAX 
BSWAP EDX 
TEST AL, -124 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RSI] 
XADD EDX, ESI 
CMOVLE EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], DI 
CMOVNZ EAX, EAX 
SETNP DL 
BTC RAX, RSI 
BTR RAX, 13 
AND SIL, -78 # instrumentation
CMOVO RBX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
