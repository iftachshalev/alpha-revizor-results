.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG RAX, RSI 
XOR RAX, 919028323 
AND RDX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RDX], 4 
CMPXCHG RDI, RDX 
CMOVB RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RSI], AX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 90 # instrumentation
CMOVNO ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], EBX 
CWD  
AND RAX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RAX], RSI 
BTC CX, 100 
BTR RBX, 74 
AND SIL, -128 # instrumentation
CMOVNLE EDX, ECX 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, -46 # instrumentation
SETNL DL 
SETNZ DL 
CMOVO RCX, RCX 
AND DIL, -86 
NOP  
CMOVNO ESI, EAX 
MOVZX DX, BL 
TEST ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDX] 
SETB AL 
MOV DI, DI 
AND RAX, -1112683656 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDX] 
SETNO DL 
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RBX] 
CMOVNZ ECX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
