.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RDI], DI 
OR DX, 59 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDX] 
CMOVNP ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RCX], 0 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -82 # instrumentation
SETZ DIL 
AND RSI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RSI] 
NOT CL 
BTS EBX, -78 
TEST EAX, -1165477273 
SETB AL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], 121 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], DI 
AND DIL, -100 
CMC  
BT EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RAX] 
XCHG SI, AX 
MOVSX DX, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], -5 
AND RAX, -259201040 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
CMPXCHG BL, AL 
CMOVB RBX, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], SIL 
SETS BL 
NOT EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RCX], 6 
XOR AL, -14 
BT RAX, 31 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
