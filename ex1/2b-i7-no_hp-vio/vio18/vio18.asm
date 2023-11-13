.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 34 # instrumentation
CMOVL RDI, RAX 
LEA DX, qword ptr [RCX + RAX + 46044] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], AL 
TEST DX, SI 
TEST ECX, EDI 
OR DI, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RAX] 
CMOVL EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RBX], 1 
XCHG CX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RBX], 4 
CMOVZ RSI, RSI 
NOT RDI 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AL, -65 
LEA DX, qword ptr [RSI + RCX + 50793] 
CMOVNS DI, BX 
CMOVNL RBX, RSI 
SETP BL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], BX 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RDI 
SETNBE DL 
BT EDX, 45 
AND RDI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], EAX 
AND RAX, 1185347774 
XOR RAX, -30 
OR BL, BL 
MOV ECX, 1451502239 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
