.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RAX] 
BTS RBX, -58 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], 0 
AND SIL, 12 # instrumentation
SETNP CL 
NOT RAX 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, -41 # instrumentation
SETS BL 
BT ECX, -72 
AND SIL, 88 # instrumentation
SETNS DL 
BTS ESI, 38 
CMOVNZ ECX, EDI 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
CMOVP SI, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RBX], EDX 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -95 # instrumentation
CMOVNO RDX, RDI 
MOVSX AX, BL 
SETBE CL 
CMOVBE RAX, RBX 
JMP .bb_main.3 
.bb_main.3:
AND DIL, -119 # instrumentation
SETBE BL 
SETNL BL 
TEST BX, -18012 
XCHG EDI, EAX 
XOR DX, CX 
BTR ESI, 104 
MOVZX DI, SIL 
SETNZ DIL 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, 37 # instrumentation
CMC  
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 57 
TEST CL, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -38 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
