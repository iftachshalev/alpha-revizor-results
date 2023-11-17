.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 4 # instrumentation
CMOVB EBX, EBX 
LEA RAX, qword ptr [RDI + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 16 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], EBX 
AND RBX, 49 
JMP .bb_main.1 
.bb_main.1:
XOR CL, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RCX], EDI 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SI, 122 
STC  
CMOVBE SI, SI 
CMOVO EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], DX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RDX 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RCX] 
AND CL, DL 
AND RAX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RBX], RAX 
CDQ  
CMOVNL ESI, EBX 
SAHF  
JMP .bb_main.4 
.bb_main.4:
TEST EBX, 993780204 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -2021710938 
AND RDX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDX] 
BTC SI, DX 
TEST EAX, -1073140807 
NOP  
XCHG DL, AL 
MOV ECX, -1956437645 
MOVSX AX, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
