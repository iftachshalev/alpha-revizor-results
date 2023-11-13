.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST SIL, -52 
CMOVLE DX, AX 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTS qword ptr [R14 + RAX], RDX 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], EDX 
AND RSI, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RSI] 
CLC  
BTC EAX, ESI 
AND SIL, 11 # instrumentation
SETS DL 
XOR AX, -18823 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG DL, DL # instrumentation
LOCK NOT qword ptr [R14 + RAX] 
CMOVZ ECX, ECX 
LAHF  
MOV BL, CL 
TEST SIL, -102 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 42 # instrumentation
BTS AX, CX 
CMOVNZ ECX, ECX 
OR CX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RBX], RDI 
CWD  
AND RAX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RAX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDX 
AND DIL, 101 # instrumentation
CMOVNLE AX, BX 
BTC ECX, 71 
AND RCX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RCX] 
TEST EAX, -100891683 
CMOVO DX, BX 
CMOVNZ RDI, RDX 
XCHG BL, CL 
OR EDX, EDX 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], 30231 
TEST DIL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
