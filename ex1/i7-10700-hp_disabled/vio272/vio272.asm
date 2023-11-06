.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 113 # instrumentation
MOV DX, 26344 
CMOVNS RAX, RAX 
CMOVZ RDI, RSI 
AND RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RDX], 1 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], 1 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], AL 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], RDX 
AND SIL, -119 # instrumentation
CMOVNLE EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDI] 
OR DI, BX 
CMOVP RBX, RCX 
BSWAP EAX 
AND RDX, 108 
CMOVLE CX, DI 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDI] 
OR EAX, 504433394 
XOR RDI, RCX 
CWD  
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], ECX 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
BTC EBX, EDX 
AND SIL, 1 # instrumentation
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RAX] 
CMOVNBE RBX, RSI 
CMOVO RSI, RDX 
OR SI, CX 
CMOVNL ESI, EAX 
BT EBX, 67 
MOV AX, -11323 
XCHG BX, DX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
