.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT RSI, RAX 
AND DIL, -99 # instrumentation
SETP BL 
CMOVS AX, CX 
TEST BX, 19531 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RCX], 5 
CMPXCHG EDX, ECX 
SETNO DL 
XOR RAX, -2130154242 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RDI] 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], -29739 
BTS RSI, 125 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], DX 
CMOVO RCX, RDI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 1 
MOV RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RBX] 
LEA EDX, qword ptr [RSI + RDX + 60167] 
BTS EDI, EBX 
AND DIL, -127 # instrumentation
SETNP BL 
SETP SIL 
SETBE CL 
XADD CL, BL 
MOVSX RDI, AX 
BTR EBX, ESI 
CWD  
BSWAP EBX 
AND ESI, ECX 
TEST RAX, 213716767 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], CL 
OR BL, 27 
AND AL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
