.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, 0b1000000000000000 # instrumentation
BSF CX, AX 
AND EBX, -125 
SETNB AL 
CMPXCHG DL, AL 
TEST AL, 52 
SETB BL 
OR AX, -3136 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RAX] 
XCHG DL, DL 
XOR AX, 27239 
XCHG EAX, EAX 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -74 # instrumentation
MOVSX ESI, BL 
CMOVNO ESI, ECX 
XCHG AL, BL 
BTR EAX, -9 
AND EDX, -113 
BSWAP EAX 
CMOVP CX, BX 
MOV AX, -32050 
BTR SI, AX 
LEA RCX, qword ptr [RSI + RBX] 
BTR EDI, ECX 
AND DIL, -3 # instrumentation
CMOVNP RSI, RSI 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR DL, -59 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RBX] 
SETNP BL 
CMOVLE RCX, RDX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ECX 
MOVSX ECX, AX 
NOT BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTC qword ptr [R14 + RSI], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
