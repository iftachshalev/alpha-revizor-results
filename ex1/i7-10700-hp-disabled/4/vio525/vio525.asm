.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDI] 
CMOVB AX, CX 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], -86 
TEST RAX, 101680156 
CMC  
OR EAX, 165285458 
AND ESI, EBX 
LEA ECX, qword ptr [RBX + RDI] 
AND RAX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RAX], RDI 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -127 # instrumentation
CMOVNO RBX, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDI] 
BTS RDI, 33 
XCHG CX, AX 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 33 # instrumentation
CMOVS BX, DI 
TEST AX, 8696 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RBX], 3 
BTC RAX, -14 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RCX] 
AND AL, SIL 
XOR EBX, 58 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTC qword ptr [R14 + RAX], RDX 
AND SIL, -113 # instrumentation
CMOVS RSI, RCX 
CMOVNBE EAX, ECX 
SETNB DL 
LEA BX, qword ptr [RSI + RCX] 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTS RCX, -89 
AND DIL, -3 # instrumentation
SETP SIL 
AND ESI, ESI 
BT RDI, 123 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], 3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
