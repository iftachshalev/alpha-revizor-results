.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RSI 
XCHG DX, AX 
BTR ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RSI], RCX 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RAX] 
TEST AL, 51 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -104 # instrumentation
CMOVNZ RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RCX], 1 
BTS RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RBX 
SETLE CL 
OR RAX, 15 
CMOVS DX, CX 
MOVSX RCX, DL 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 62 # instrumentation
BTC EDI, EAX 
CMOVBE RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RBX] 
AND DIL, -124 # instrumentation
CMOVLE ESI, EBX 
JMP .bb_main.3 
.bb_main.3:
BTR ESI, EDX 
CMPXCHG RCX, RDI 
SETNL BL 
CWD  
JMP .bb_main.4 
.bb_main.4:
AND DIL, 28 # instrumentation
CMOVS AX, DX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 31488 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -1288114794 
CMOVNS RDX, RSI 
MOVSX EBX, DL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
TEST AL, DL 
SETNS BL 
MOVSX ECX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
