.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RAX 
AND RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTS dword ptr [R14 + RSI], EBX 
AND SIL, 57 # instrumentation
CMOVP ECX, EAX 
CMOVNB ESI, EBX 
CMOVNO DI, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], EAX 
STD  
SETNO CL 
OR ESI, -91 
BTC CX, -98 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], 6 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RBX], RDX 
CLC  
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RSI] 
CMOVZ RDI, RSI 
CMPXCHG EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], AL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR RAX, RDX 
NOT EDX 
XADD EDX, EDX 
SETB DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], CL 
XADD RDX, RDI 
CMOVS AX, BX 
SETNZ BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], ECX 
CMOVL EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RBX 
CMOVP EAX, ESI 
CMOVNZ ECX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
