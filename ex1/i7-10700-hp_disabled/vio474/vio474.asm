.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDX], 2 
BTS EBX, 60 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDX] 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 40 
AND RDI, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BT dword ptr [R14 + RDI], ECX 
XADD AL, DL 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], -1864060501 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND SIL, -88 # instrumentation
CMOVB DI, DX 
CMOVNL RDI, RAX 
MOVZX RDX, DX 
CMOVP EBX, EAX 
CMOVNB DX, BX 
NOT BL 
AND RCX, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RCX] 
CMOVNL SI, BX 
CMOVO EBX, ECX 
JNO .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
XOR EAX, 170233547 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], 7313 
AND RAX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RAX], RBX 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR EAX, -1630346553 
CMPXCHG BL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RDI] 
AND EAX, -331989749 
MOV AL, -9 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], -285694251 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DL, 77 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RBX] 
CMOVNB SI, AX 
TEST EAX, -1863437705 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
