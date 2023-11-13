.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP EAX 
OR AL, AL 
CMOVNO BX, DI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RSI] 
CMOVNBE BX, SI 
MOVSX DI, BL 
OR AL, 111 
CMOVNL RSI, RDI 
SAHF  
MOV RBX, -3151618539388977169 
BT RSI, RDI 
AND DIL, -100 # instrumentation
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], 0 
XOR EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RSI] 
CMOVO ECX, EDI 
CMPXCHG DL, SIL 
BTC DI, AX 
TEST EAX, 11436279 
SETL DL 
BTC RSI, -96 
XADD AX, DI 
CMOVNB EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND DL, AL 
AND EBX, EBX 
TEST DX, SI 
CMPXCHG RSI, RBX 
CMPXCHG RAX, RDX 
XCHG BL, BL 
TEST RCX, -1911663678 
CMOVNS ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
