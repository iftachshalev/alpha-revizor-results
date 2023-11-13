.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], -122 
CMOVL EDI, EDI 
BT EDI, -26 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], ESI 
TEST EAX, ESI 
MOVSX EDI, AL 
CMOVNO RDX, RDI 
SETP BL 
AND RDI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDI] 
CMPXCHG DI, DI 
SETNZ AL 
CMPXCHG RDX, RDI 
XOR AX, 23 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
TEST EDI, ECX 
SETP AL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 46 # instrumentation
SETB DIL 
SETLE AL 
BTC RSI, 68 
CMPXCHG AX, DI 
CMOVNB EAX, EAX 
AND DI, -1 
AND RBX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RBX], 3 
CMOVNB DI, SI 
XADD CL, AL 
CMOVLE CX, DX 
XCHG DX, AX 
CMC  
CMOVP ESI, ESI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EAX 
BSWAP EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
