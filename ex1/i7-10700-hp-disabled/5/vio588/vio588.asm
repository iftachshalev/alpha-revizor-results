.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -106 # instrumentation
MOV SIL, CL 
SETO BL 
XADD RAX, RDI 
CMOVP RBX, RCX 
CMOVBE EBX, EBX 
CMOVNL RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST DX, -1085 
CMOVBE DX, BX 
BT EDX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], ESI 
AND RDI, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RDI], 6 
STD  
AND EAX, 2105279714 
AND RCX, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
BTS ECX, ESI 
MOV BL, -63 
STC  
MOV RCX, RDX 
CMPXCHG BL, BL 
BT RDI, RBX 
XOR SIL, -15 
JMP .bb_main.3 
.bb_main.3:
MOV EDX, 1863705202 
AND EAX, 676296774 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTS qword ptr [R14 + RAX], RDX 
TEST ESI, 1977301809 
SETS BL 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOV RAX, RBX 
MOVZX EDI, DIL 
NOP  
OR EAX, 472255846 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
