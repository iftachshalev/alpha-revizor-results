.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CDQ  
AND RAX, 117 
CWDE  
CMOVNB RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], 111 
AND RSI, -119 
STD  
MOVZX RDI, DIL 
XOR RSI, RCX 
BSWAP EAX 
CMOVNZ RSI, RDX 
AND RDX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], EAX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], RDI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -113 # instrumentation
CMOVO EBX, EBX 
MOVSX DI, DL 
BT RCX, 10 
BTC ECX, 93 
BTS ECX, EAX 
STC  
AND RDX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDX], 7 
BTR RDI, RBX 
AND SIL, -12 # instrumentation
CMOVO ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RSI], 3 
XOR DL, 112 
NOT RDX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], BL 
OR SI, DI 
SETNLE CL 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RCX], 2 
AND DIL, -36 # instrumentation
SETNS AL 
AND RSI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
