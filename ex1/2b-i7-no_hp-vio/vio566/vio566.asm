.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT EDX 
AND RDX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RDX], 6 
CMPXCHG BL, CL 
AND RCX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RCX], 2 
OR AL, -102 
CMOVZ RAX, RDX 
CMOVS RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], 63 
BTR RAX, 6 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
BTC RBX, 14 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDI], 0 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT RBX, RBX 
BTS RCX, RDI 
CMPXCHG RSI, RDX 
CMPXCHG BL, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RSI] 
CDQ  
XCHG ECX, EAX 
AND AL, -84 
MOVZX AX, BL 
SETNO DL 
SETNB DIL 
AND RCX, 33 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], -122 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDI] 
SETB DIL 
CMOVP BX, CX 
XOR SIL, -55 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
