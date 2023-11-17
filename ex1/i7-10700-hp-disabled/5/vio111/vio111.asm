.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 83 # instrumentation
CMOVNL SI, AX 
OR AX, 0b1000000000000000 # instrumentation
BSR DX, AX 
AND SIL, -45 # instrumentation
CMC  
CMOVLE RSI, RCX 
CBW  
TEST RDX, 1111678332 
AND AL, DIL 
CMOVNO RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
BTC EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], CL 
CDQ  
NOP  
CMOVZ RDX, RBX 
MOV RCX, -3995945305798843558 
MOV ECX, ESI 
CMOVL DX, SI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS EBX, -35 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], 5 
CMOVNZ CX, SI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RAX], 5 
AND DIL, 22 # instrumentation
CMOVNB EAX, EDX 
STD  
SETNS DL 
TEST ESI, EDI 
CMOVZ DI, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RAX] 
SETNZ DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], DL 
MOV ECX, -413365263 
OR EAX, -65 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
