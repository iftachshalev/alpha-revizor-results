.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT DI, DI 
AND DIL, -94 # instrumentation
CMOVNP RDX, RCX 
OR DL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDI] 
OR EAX, -1550403154 
SETL DIL 
BTC EAX, EDX 
AND SIL, 111 # instrumentation
CMOVB EAX, EDI 
SETNS BL 
CMPXCHG BX, DX 
SETNS DL 
CMOVB ECX, EDX 
CMOVL EDI, EDX 
AND ECX, -53 
MOV EDX, EDX 
XADD EDI, EDX 
OR DI, BX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RSI] 
XOR ESI, 124 
AND RBX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RBX] 
CMOVNL EDX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDX], RCX 
TEST AL, DL 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RDX 
OR SIL, 91 
NOT CL 
CMOVNL EDX, ECX 
XCHG SI, AX 
NOT BL 
SETNO DL 
AND RSI, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RSI] 
CMOVNP BX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
