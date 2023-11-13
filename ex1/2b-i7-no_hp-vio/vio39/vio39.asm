.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RBX, RCX 
XOR RSI, -24 
CDQ  
TEST RAX, RBX 
MOVSX RCX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
TEST DI, BX 
CMOVNS RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RBX] 
AND SIL, 75 # instrumentation
CMOVP RAX, RCX 
OR AX, 35 
AND RDX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], EDI 
TEST DL, -66 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RCX], 5 
AND RCX, 0b1111111111111 # instrumentation
OR RAX, qword ptr [R14 + RCX] 
MOVSX RDI, CL 
MOVZX BX, BL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], -99 
CMOVNZ RBX, RDI 
MOV BL, 87 
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RCX 
SETNO AL 
CMPXCHG BX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RSI] 
OR RAX, -287853439 
AND RDI, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], DL 
SETP DIL 
AND RDI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RDI], 5 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], -16 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
