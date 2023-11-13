.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG CL, DL 
LEA RDI, qword ptr [RCX] 
AND DI, -47 
CMOVO RDX, RAX 
SETBE DIL 
MOV RSI, -3113548726774921816 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], ECX 
CMOVZ EDI, EDI 
SETNS AL 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], 37 
TEST DI, -17690 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RCX] 
BTC EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], BX 
CMOVNLE ESI, EDX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX ESI, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDX] 
BTC RBX, RSI 
NOP  
BT RAX, RBX 
AND SIL, -105 # instrumentation
CMOVP CX, DI 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RCX 
AND SIL, -109 # instrumentation
SETP AL 
CDQ  
NOT ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RCX] 
CMPXCHG CX, DI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RDI] 
CMPXCHG CL, DIL 
BT RDX, -102 
STC  
TEST EAX, -1417900251 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
